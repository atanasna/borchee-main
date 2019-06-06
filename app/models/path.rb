class Path < ApplicationRecord
    #Attributes
    serialize :latitudes, Array
    serialize :longitudes, Array

    #Validators
    validates_presence_of :latitudes, :longitudes, :time, :color
    validate :coordinates
    
    #Relationships
    has_many :review, as: :reviewable

    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitudes},#{longitudes},#{description}, #{time}, #{lenght}"
    end

    #Private 
    private
    def coordinates
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
end
