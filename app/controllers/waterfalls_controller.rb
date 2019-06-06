class WaterfallsController < ApplicationController
    def index
        wfs = Waterfall.where(deleted: false)
        render json: wfs
    end

    def show
        wf = Waterfall.where(id: params[:id],deleted: false).first
        render json: { 
            :general => wf,
            :reviews => wf.reviews, 
            :images => wf.images}
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
        wf = Waterfall.where(id: params[:id], deleted: false).first
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
        if Waterfall.where(id: params[:id],deleted: false).first.delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
