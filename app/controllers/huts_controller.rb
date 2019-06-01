class HutsController < ApplicationController
    def index
        huts = Hut.all
        render json: huts
    end

    def show
        id = params[:id]
        hut = Hut.find(id)
        render json: { 
            :general => hut, 
            :score => hut.score,
            :reviews => hut.reviews, 
            :images => nil}
    end
end
