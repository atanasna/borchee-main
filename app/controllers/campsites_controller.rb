class CampsitesController < ApplicationController
    def index
        render json: Campsite.where(deleted: false)
    end

    def show
        camp = Campsite.where(id: params[:id],deleted: false).first
        render json: { 
            :general => camp,
            :reviews => camp.reviews, 
            :images => camp.images}
    end

    def create
        result = Campsite.create(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :description => params[:description])

        if result.errors.size == 0
            render json: {:result => "success", :element => result}
        else
            render json: {:result => "failure", :messages => result.errors.messages}
        end
    end

    def update
        camp = Campsite.where(id: params[:id],deleted: false).first
        if not params[:name].nil? then camp.name = params[:name] end
        if not params[:latitude].nil? then camp.latitude = params[:latitude] end
        if not params[:longitude].nil? then camp.longitude = params[:longitude] end
        if not params[:description].nil? then camp.description = params[:description] end

        if camp.save
            render json: camp
        else
            render json: "failure"
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
