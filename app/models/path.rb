class Path < ApplicationRecord
    #Attributes
    serialize :latitudes, Array
    serialize :longitudes, Array

    #Validators
    validates_presence_of :latitudes, :longitudes, :time, :color
    validate :coordinates_validator
    
    #Relationships
    has_many :review, as: :reviewable

    #Modules
    include Reviewable

    #callbacks
    after_initialize do |path|
        if path.distance.nil?
            path.distance = (calculate_distance_from_coordinates/1000).round(2)
        end
        if path.time.nil?
            path.time = (path.distance/4*60).round(2)
        end
    end

    
    
    #Instance Methods
    def info
        "#{name},#{latitudes},#{longitudes},#{description}, #{time}, #{distance}"
    end

    def calculate_distance_from_coordinates
        distance = 0
        
        latitudes.each_with_index do |lat,i|
            if i==latitudes.size-1
                break
            else
                point1 = [latitudes[i],longitudes[i]]
                point2 = [latitudes[i+1],longitudes[i+1]]
                distance += distance_between_two_coordinates(point1,point2)
            end
        end

        return distance
    end

    #Class Methods
    def self.fromGpxFile2 (filename,coordinates_number)
        #require 'nokogiri'
        #doc = Nokogiri::XML(File.open("koncheto.gpx"))
        #trks = doc.xpath('//xmlns:trk')
        #tracks = Array.new
        #names = Array.new
        #trks.each do |trk|
        #    track = Nokogiri::XML(trk.to_s)
        #    names.push track.xpath('//name').children.to_s
        #    trackpoints = track.xpath('//trkpt')
        #    points = Array.new
        #    trackpoints.each do |trkpt|
        #        points << [trkpt.xpath('@lat').to_s.to_f, trkpt.xpath('@lon').to_s.to_f]
        #    end
        #    tracks.push points
        #end

        latitudes = []
        longitudes = []

        file_coordinates = { :lat=>[], :lon=>[] }
        File.readlines(filename).each do |line|
            if line.to_s.match(/<trkpt lat=\"(\d+\.\d+)\" lon=\"(\d+\.\d+)\"/i)
                coordinates = line.to_s.match(/<trkpt lat=\"(\d+\.\d+)\" lon=\"(\d+\.\d+)\"/i).captures
                file_coordinates[:lat].push coordinates[0].to_f
                file_coordinates[:lon].push coordinates[1].to_f
            end
        end

        coordinates_package_size = file_coordinates[:lat].size/coordinates_number.to_i
        if(coordinates_package_size==0)
            coordinates_package_size = 1
        end

        counter = 1
        while true
            if file_coordinates[:lat][counter*coordinates_package_size].nil?
                break
            else
                latitudes.push file_coordinates[:lat][counter*coordinates_package_size]
                longitudes.push file_coordinates[:lon][counter*coordinates_package_size]
            end
            counter += 1
        end

        colors = ["#fc0303","#63450d","#fcb103","#46b322","#19bd83","#292991","#b535a0"]
        #colors = ["#fea0a0","#c1b59e","#fee09a","#b5e1a7","#a3e5cd","#a9a9d3","#e1aed9"]
        return Path.new(
            :latitudes=>latitudes, 
            :longitudes=>longitudes, 
            :time=>nil, 
            :distance=>nil, 
            #:color => "#"+"%06x" % (rand * 0xffffff))
            :color => colors[rand(colors.size)])

    end
    
    def self.fromGpxFile(filename, track_lenght)
        doc = Nokogiri::XML(File.open(filename))
        trks = doc.xpath('//xmlns:trk')
        tracks = Array.new
        batch_size = 0
        trks.each_with_index do |trk,i|
            lats = []
            lons = []
            track = Nokogiri::XML(trk.to_s)
            tname = track.xpath('//name').children.to_s
            trackpoints = track.xpath('//trkpt')

            if trackpoints.size<track_lenght
                batch_size = 1
            else
                batch_size = trackpoints.size/track_lenght     
            end

            i=0
            while true 
                if trackpoints[i*batch_size].nil?
                    break
                end
                lats.push trackpoints[i*batch_size].xpath('@lat').to_s.to_f
                lons.push trackpoints[i*batch_size].xpath('@lon').to_s.to_f
                i+=1
            end

            lats.push trackpoints.last.xpath('@lat').to_s.to_f
            lons.push trackpoints.last.xpath('@lon').to_s.to_f

            colors = ["#fc0303","#63450d","#fcb103","#46b322","#19bd83","#292991","#b535a0"]
            #colors = ["#fea0a0","#c1b59e","#fee09a","#b5e1a7","#a3e5cd","#a9a9d3","#e1aed9"]
            tracks.push Path.new(
                :latitudes=>lats, 
                :longitudes=>lons, 
                :time=>nil, 
                :distance=>nil, 
                #:color => "#"+"%06x" % (rand * 0xffffff))
                :color => colors[rand(colors.size)])
        end

        return tracks
    end

    #Private 
    private
    def coordinates_validator
        if longitudes.size != latitudes.size
            errors.add("something is wrong with the coordinates")
        end
        longitudes.each do |lng|
            if lng < -180 or lng > 180
                errors.add("longitudes should be between -180 and 180")
            end
        end
        latitudes.each do |lat|
            if lat < -90 or lat > 90
                errors.add("latitude should be between -90 and 90")
            end
        end
    end

    def distance_between_two_coordinates loc1, loc2
        rad_per_deg = Math::PI/180  # PI / 180
        rkm = 6371                  # Earth radius in kilometers
        rm = rkm * 1000             # Radius in meters

        dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
        dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

        lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
        lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

        a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
        c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

        rm * c # Delta in meters
    end
end
