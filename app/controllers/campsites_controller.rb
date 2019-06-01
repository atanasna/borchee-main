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
end
