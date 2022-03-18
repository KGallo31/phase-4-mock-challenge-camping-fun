class CampersController < ApplicationController

    def index
        camper = Camper.all
        render json: camper, status: :ok
    end

    def show
        render json: Camper.find(params[:id]), status: :ok
    end

    def create 
        render json: Camper.create!(camper_params), status: :created
    end

    def update
        render json: Camper.find(params[:id]).update!(name: params[:name],age: params[:age]), status: :accepted
    end

    private

    def camper_params
        params.permit(:name,:age)
    end
end
