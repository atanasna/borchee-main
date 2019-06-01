class CavesController < ApplicationController
    def index
        render json: Cave.all
    end

    def show
        cave = Cave.find(params[:id])
        render json: { 
            :general => cave, 
            :reviews => cave.reviews, 
            :images => nil}
    end

    def create
        cave = Cave.create(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :depth => params[:depth],
            :lenght => params[:lenght],
            :description => params[:description])

        if cave.save
            render json: cave
        else
            render json: "failure"
        end
    end

    def update
        cave = Cave.find params[:id]
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
        if Cave.find(params[:id]).delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
