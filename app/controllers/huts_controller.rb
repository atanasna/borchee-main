class HutsController < ApplicationController
    def index
        render json: Hut.where(deleted: false)
    end

    def show
        hut = Hut.where(id: params[:id],deleted: false).first
        images_urls = Array.new
        hut.images.each do |image|
            images_urls.push url_for(image).sub("192.168.50.115:3000","borchee.com")
        end
        
        render json: hut.as_json.merge({
            :score => hut.score,
            :reviews => hut.reviews, 
            :images => images_urls
        }).to_json
        #render json: { 
        #    :general => hut, 
        #    :score => hut.score,
        #    :reviews => hut.reviews, 
        #    :images => images_urls}
    end

    def create
        hut = Hut.new(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude],
            :altitude => params[:altitude],
            :capacity => params[:capacity],
            :description => params[:description])

        if not params[:images].nil?
            hut.images = params[:images]
        end
        
        if hut.save
            render json: {:result => "success", :element => hut}
        else
            render json: {:result => "failure", :messages => hut.errors.messages}
        end
    end

    def update
        hut = Hut.where(id: params[:id],deleted: false).first
        if not params[:name].nil? then hut.name = params[:name] end
        if not params[:altitude].nil? then hut.altitude = params[:altitude] end
        if not params[:capacity].nil? then hut.altitude = params[:capacity] end
        if not params[:latitude].nil? then hut.latitude = params[:latitude] end
        if not params[:longitude].nil? then hut.longitude = params[:longitude] end
        if not params[:description].nil? then hut.description = params[:description] end

        if hut.save
            render json: {:result => "success", :element => hut}
        else
            render json: {:result => "failure", :messages => hut.errors.messages}
        end
    end

    def destroy
        if Hut.where(id: params[:id],deleted: false).first.delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
