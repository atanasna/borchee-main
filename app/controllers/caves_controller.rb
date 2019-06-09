class CavesController < ApplicationController
    def index
        render json: Cave.where(deleted: false)
    end

    def show
        cave = Cave.where(id: params[:id],deleted: false).first
        images_urls = Array.new
        cave.images.each do |image|
            images_urls.push url_for(image)
        end

        render json: { 
            :general => cave, 
            :score => cave.score,
            :reviews => cave.reviews, 
            :images => images_urls}
    end

    def create
        cave = Cave.new(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :depth => params[:depth],
            :lenght => params[:lenght],
            :description => params[:description],
            :images => params[:images])

        if cave.save
            render json: {:result => "success", :element => cave}
        else
            render json: {:result => "failure", :messages => cave.errors.messages}
        end
    end

    def update
        cave = Cave.where(id: params[:id],deleted: false).first
        if not params[:name].nil? then cave.name = params[:name] end
        if not params[:latitude].nil? then cave.latitude = params[:latitude] end
        if not params[:longitude].nil? then cave.longitude = params[:longitude] end
        if not params[:depth].nil? then cave.depth = params[:depth] end
        if not params[:lenght].nil? then cave.lenght = params[:lenght] end
        if not params[:description].nil? then cave.description = params[:description] end

        if cave.save
            render json: {:result => "success", :element => cave}
        else
            render json: {:result => "failure", :messages => cave.errors.messages}
        end
    end
    
    def destroy
        if Cave.where(id: params[:id],deleted: false).first.delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
