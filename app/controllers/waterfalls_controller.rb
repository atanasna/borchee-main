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

    def update
        wf = Waterfall.find params[:id]
        if not params[:name].nil? then wf.name = params[:name] end
        if not params[:latitude].nil? then wf.latitude = params[:latitude] end
        if not params[:longitude].nil? then wf.longitude = params[:longitude] end
        if not params[:height].nil? then wf.height = params[:height] end
        if not params[:description].nil? then wf.description = params[:description] end

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
