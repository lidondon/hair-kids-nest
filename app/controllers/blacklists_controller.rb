class BlacklistsController < ApplicationController
	def index
		person_id = params[:person_id]
		b_self = Blacklist.where(person_id: person_id)
		b_others = Blacklist.where.not(person_id: person_id)
  		@blacklists = b_self + b_others
	end

	def create
		if Blacklist.create create_blacklist_params
			response = 'ok'
		else
			response = 'fail'
		end
		render json: response
	end

	def destroy
		if Blacklist.destroy(params[:id])
			response = 'ok'
		else
			response = 'fail'
		end
		render json: response
		# redirect_to controller: :client_response, action: :client, response: response
	end

	def update
		if blacklist = Blacklist.find(params[:id])
			if blacklist.update(update_blacklist_params)
				response = 'ok'
			else
				response = 'fail'
			end
		else
			response = 'fail'
		end
		render json: response
	end








	private 

	def update_blacklist_params
  		params.require(:blacklist).permit(:title, :content)
	end

	def create_blacklist_params
  		params.require(:blacklist).permit(:person_id, :title, :content)
	end
end
