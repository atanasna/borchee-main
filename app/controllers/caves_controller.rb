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

    def destroy
        if Cave.find(params[:id]).delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
