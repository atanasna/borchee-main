class WaterfallsController < ApplicationController
    def index
        wfs = Waterfall.all
        render json: wfs
    end

    def show
        id = params[:id]
        wf = Waterfall.find(id)
        render json: { 
            :general => wf,
            :reviews => wf.reviews, 
            :images => nil}
    end

    def create
        wf = Waterfall.create(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :height => params[:height],
            :description => params[:description])

        if wf.save
            render json: wf
        else
            render json: "failure"
        end
    end

    def destroy
        if Waterfall.find(params[:id]).delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
