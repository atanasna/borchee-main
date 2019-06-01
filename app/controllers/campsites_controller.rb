class CampsitesController < ApplicationController
    def index
        camps = Campsite.all
        render json: camps
    end

    def show
        id = params[:id]
        camp = Campsite.find(id)
        render json: { 
            :general => camp,
            :reviews => camp.reviews, 
            :images => nil}
    end

    def create
        camp = Campsite.create(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :description => params[:description])

        if camp.save
            render json: camp
        else
            render json: "failure"
        end
    end

    def destroy
        if Campsite.find(params[:id]).delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
