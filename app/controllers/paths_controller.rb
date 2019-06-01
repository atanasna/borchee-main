class PathsController < ApplicationController
    def index
        render json: Path.all
    end

    def show 
        path = Path.find(params[:id])
        render json: { 
            :general => path, 
            :score => path.score,
            :reviews => path.reviews, 
            :images => nil}
    end

    def create
        path = Path.create(
            :name => params[:name], 
            :lenght => params[:lenght],
            :time => time[:time],
            :latitudes => params[:latitudes], 
            :longitudes => params[:longitudes], 
            :description => params[:description])

        if path.save
            render json: path
        else
            render json: "failure"
        end
    end

    def destroy
        if Path.find(params[:id]).delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
