class WaterfallsController < ApplicationController
    def index
        render json: Waterfall.where(deleted: false)
    end

    def show
        wf = Waterfall.where(id: params[:id],deleted: false).first
        images_urls = Array.new
        wf.images.each do |image|
            images_urls.push url_for(image)
        end
        render json: wf.as_json.merge({
            :score => wf.score,
            :reviews => wf.reviews, 
            :images => images_urls
        }).to_json
        #render json: { 
        #    :general => wf,
        #    :score => wf.score,
        #    :reviews => wf.reviews, 
        #    :images => images_urls}
    end

    def create
        wf = Waterfall.new(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :height => params[:height],
            :description => params[:description])

        if not params[:images].nil?
            hut.images = params[:images]
        end
        if wf.save
            render json: {:result => "success", :element => wf}
        else
            render json: {:result => "failure", :messages => wf.errors.messages}
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
            render json: {:result => "success", :element => wf}
        else
            render json: {:result => "failure", :messages => wf.errors.messages}
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
