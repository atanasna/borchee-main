class HutsController < ApplicationController
    def index
        render json: Hut.where(deleted: false)
    end

    def show
        hut = Hut.where(id: params[:id],deleted: false).first
        render json: { 
            :general => hut, 
            :score => hut.score,
            :reviews => hut.reviews, 
            :images => hut.images}
    end

    def create
        result = Hut.create(
            :name => params[:name], 
            :latitude => params[:latitude], 
            :longitude => params[:longitude],
            :altitude => params[:altitude],
            :capacity => params[:capacity],
            :description => params[:description])

        result.images.attach params[:images]

        if result.errors.size == 0
            render json: {:result => "success", :element => result}
        else
            render json: {:result => "failure", :messages => result.errors.messages}
        end
    end

    def update
        hut = Hut.where(id: params[:id],deleted: false).first
        if not params[:name].nil? then hut.name = params[:name] end
        if not params[:altitude].nil? then hut.altitude = params[:altitude] end
        if not params[:capacity].nil? then hut.altitude = params[:capacity] end
        if not params[:latitude].nil? then hut.latitude = params[:latitude] end
        if not params[:longitude].nil? then hut.longitude = params[:longitude] end
        
        if not params[:description].nil? then hut.description = params[:description] end

        if hut.save
            render json: hut
        else
            render json: "failure"
        end
    end

    def destroy
        if Hut.where(id: params[:id],deleted: false).first.delete
            render json: "success"
        else
            render json: "failure"
        end
    end
end
