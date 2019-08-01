class CampsitesController < ApplicationController
    def index
        render json: Campsite.where(deleted: false)
    end

    def show
        camp = Campsite.where(id: params[:id],deleted: false).first
        images_urls = Array.new
        camp.images.each do |image|
            images_urls.push url_for(image)
        end

        render json: camp.as_json.merge({
            :score => camp.score,
            :reviews => camp.reviews, 
            :images => images_urls
        }).to_json

        #render json: { 
        #    :general => camp,
        #    :score => camp.score,
        #    :reviews => camp.reviews, 
        #    :images => images_urls}
    end

    def create
        camp = Campsite.new(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :description => params[:description])

        if not params[:images].nil?
            hut.images = params[:images]
        end

        if camp.save
            render json: {:result => "success", :element => camp}
        else
            render json: {:result => "failure", :messages => camp.errors.messages}
        end
    end

    def update
        camp = Campsite.where(id: params[:id],deleted: false).first
        if not params[:name].nil? then camp.name = params[:name] end
        if not params[:latitude].nil? then camp.latitude = params[:latitude] end
        if not params[:longitude].nil? then camp.longitude = params[:longitude] end
        if not params[:description].nil? then camp.description = params[:description] end

        if camp.save
            render json: {:result => "success", :element => camp}
        else
            render json: {:result => "failure", :messages => camp.errors.messages}
        end
    end

    def destroy
        if Campsite.where(id: params[:id],deleted: false).first.delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
