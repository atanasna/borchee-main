class CavesController < ApplicationController
    def index
        render json: Cave.where(deleted: false)
    end

    def show
        cave = Cave.where(id: params[:id],deleted: false).first
        render json: { 
            :general => cave, 
            :reviews => cave.reviews, 
            :images => cave.images}
    end

    def create
        result = Cave.create(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :depth => params[:depth],
            :lenght => params[:lenght],
            :description => params[:description])

        if result.errors.size == 0
            render json: {:result => "success", :element => result}
        else
            render json: {:result => "failure", :messages => result.errors.messages}
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
            render json: cave
        else
            render json: "failure"
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
