class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid
  include ActionController::Cookies



  private

  def render_invalid(invalid)
    render json: {error: invalid.record.errors.full_messages}
  end

  def render_not_found(error)
    render json: {error: "#{error.model} not found"}
  end

end
