class ActivitiesController < ApplicationController

    def index
        activity = Activity.all
        render json: activity, status: :ok
    end

    def destroy
        render json: Activity.find(params[:id]).destroy, status: :ok
    end

end
