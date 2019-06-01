class CavesController < ApplicationController
    def index
        caves = Cave.all
        render json: caves
    end

    def show
        id = params[:id]
        cave = Cave.find(id)
        render json: { 
            :general => cave, 
            :reviews => cave.reviews, 
            :images => nil}
    end
end
