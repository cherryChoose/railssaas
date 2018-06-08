class ErrorsController < ApplicationController
  # action_dispatch
  # Rack::Utils::HTTP_STATUS_CODES.fetch(status, Rack::Utils::HTTP_STATUS_CODES[500])
  # detail see https://github.com/rails/rails/blob/master/actionpack/lib/action_dispatch/middleware/public_exceptions.rb
  def show
  	# @exception = <ActionController::RoutingError: No route matches [GET] "/produc00"> 404
  	@exception = env["action_dispatch.exception"]
    respond_to do |format|
      format.html { render action: request.path[1..-1] }
      format.json { render json: {status: request.path[1..-1], error: @exception.message} }
    end
  end	
end
