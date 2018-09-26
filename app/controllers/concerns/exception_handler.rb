module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ message: e.message }, :unprocessable_entity)
    end

    rescue_from RangeError do |e|
      json_response({ message: e.message }, 400)
    end

    rescue_from ActionController::RoutingError do |e|
      json_response({ message: e.message }, 404)
    end

    rescue_from ActionView::MissingTemplate do |e|
      json_response({ message: e.message }, 404)
    end
  end
end