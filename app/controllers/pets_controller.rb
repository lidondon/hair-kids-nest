class PetsController < ApplicationController
	before_action :set_pet, only: [:show]

	def index
		pa = pet_search_params
  		@pets = (pa.count > 0) ? Pet.where(pa) : Pet.all
  end

  def create
  		@pet = Pet.new pet_params
  		source = params[:source]
  		# binding.pry

  		if @pet.save
  			if params[:pet_photos] != nil && params[:pet_photos][:image] != nil
  				params[:pet_photos][:image].each do |img|
  					@pet.pet_photos.create(image: img)
  				end
  			elsif source
  				# binding.pry
  				randPhoto = PetPhoto.all[rand(PetPhoto.count)]
  				fakePhoto = PetPhoto.new
  				fakePhoto.image = randPhoto.image
  				fakePhoto.pet_id = @pet.id
  				fakePhoto.save
  				redirect_to controller: :client_response, action: :client, response: :ok
  			else
  				flash[:notice] = err
  				redirect_to new_pet_url
  			end
  		else
  			if source
  				error = @pet.errors.full_messages
  				redirect_to controller: :client_response, action: :client, response: error
  			else
	  			flash[:notice] = @pet.errors.messages
	  			render new_pet_url
	  		end
  		end
  end

  def new
  		@pet = Pet.new
  		@photos = @pet.pet_photos.build
  end

  def show
  		unless @pet
  			pa = Pet.last
  			redirect_to controller: :client_response, action: :client, response: :error_occurs
  		end
  end



  private

	def pet_params
  		params.require(:pet).permit(:person_id, :type_id, :region_id, :sub_region, :sex, :size, :color, :contact_person, :contact_method, :description, pet_photos_attributes: [:image])
	end

	def pet_search_params
		result = {}
		if params[:person_id] 
			result[:person_id] = params[:person_id].to_i
		end

		if params[:type_id] 
			result[:type_id] = params[:type_id].to_i
		end

		if params[:region_id] 
			result[:region_id] = params[:region_id].to_i
		end

		if params[:sex] 
			result[:sex] = params[:sex]
		end
  		result
	end

	def set_pet
		begin
			@pet = Pet.find(params[:id])
		rescue 
			@pet = nil
		end
	end
end








