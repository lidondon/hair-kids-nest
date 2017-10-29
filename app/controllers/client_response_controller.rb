class ClientResponseController < ApplicationController
	def client
		# @p = {status: :ok}
		@response = params[:response]
		render json: @response
	end


end
