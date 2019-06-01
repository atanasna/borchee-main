class HutsController < ApplicationController
    def index
        render json: Hut.all
    end

    def show
        hut = Hut.find(params[:id])
        render json: { 
            :general => hut, 
            :score => hut.score,
            :reviews => hut.reviews, 
            :images => nil}
    end

    def create
        hut = Hut.create(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude], 
            :altitude => params[:altitude],
            :description => params[:description])

        if hut.save
            render json: hut
        else
            render json: "failure"
        end
    end

    def update
        hut = Hut.find params[:id]
        if not params[:name].nil? then hut.name = params[:name] end
        if not params[:latitude].nil? then hut.latitude = params[:latitude] end
        if not params[:longitude].nil? then hut.longitude = params[:longitude] end
        if not params[:altitude].nil? then hut.altitude = params[:altitude] end
        if not params[:description].nil? then hut.description = params[:description] end

        if hut.save
            render json: hut
        else
            render json: "failure"
        end
    end

    def destroy
        if Hut.find(params[:id]).delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
