class WaterfallsController < ApplicationController
    def index
        wfs = Waterfall.all
        render json: wfs
    end

    def show
        id = params[:id]
        wf = Waterfall.find(id)
        render json: { 
            :general => wf,
            :reviews => wf.reviews, 
            :images => nil}
    end
end
