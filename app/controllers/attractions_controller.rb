class AttractionsController < ApplicationController

    def index
        @attractions = Attraction.all
    end

    def show
    end

    def new
        @attraction = Attraction.new
    end

    def edit 
    end

    def create
        @attraction = Attraction.new(attraction_params)
    end

    def destroy
        @attraction.destroy
    end

    private

    def attraction_params
    end
end