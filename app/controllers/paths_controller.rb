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

    def update
        path = Path.find params[:id]
        if not params[:name].nil? then path.name = params[:name] end
        if not params[:lenght].nil? then path.lenght = params[:lenght] end
        if not params[:time].nil? then path.time = params[:time] end
        if not params[:latitudes].nil? then path.latitudes = params[:latitudes] end
        if not params[:longitudes].nil? then path.longitudes = params[:longitudes] end
        if not params[:description].nil? then path.description = params[:description] end

        if wf.save
            render json: wf
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
