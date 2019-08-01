class PathsController < ApplicationController
    def index
        render json: Path.where(deleted: false)
    end

    def show 
        path = Path.where(id: params[:id],deleted: false).first

        render json: path.as_json.merge({
            :score => path.score,
            :reviews => path.reviews, 
            :images => nil
        }).to_json

        #render json: { 
        #    :general => path, 
        #    :score => path.score,
        #    :reviews => path.reviews, 
        #    :images => nil}
    end

    def create
        path = Path.create(
            :name => params[:name], 
            :latitudes => params[:latitudes], 
            :longitudes => params[:longitudes],
            :lenght => params[:lenght],
            :time => time[:time],
            :description => params[:description])

        if path.save
            render json: path
        else
            render json: "failure"
        end
    end

    def update
        path = Path.where(id: params[:id],deleted: false).first
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
        if Path.where(id: params[:id],deleted: false).first.delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
