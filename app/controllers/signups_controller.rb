class SignupsController < ApplicationController


    def create
        s = Signup.create!(signup_params)
        if s.valid?
            render json: Activity.find(s.activity_id), status: :ok
        end
    end

    private

    def signup_params
        params.permit(:time,:activity_id,:camper_id)
    end
end
