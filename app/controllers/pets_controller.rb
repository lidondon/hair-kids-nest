class PetsController < ApplicationController
	def index
  		@pets = Pet.all
  end

  def create
  		@pet = Pet.new pet_params
  		if @pet.save
  			if params[:pet_photos][:image] != nil
  				err = params[:product].to_s;
  				params[:pet_photos][:image].each do |img|
  					@pet.pet_photos.create(image: img)
  				end
  			end
  			flash[:notice] = err
  			redirect_to :new_pet
  		else
  			flash[:notice] = @pet.errors.messages
  			render :new_pet
  		end
  end

  def new
  		@pet = Pet.new
  		@photos = @pet.pet_photos.build
  end
end








private

	def pet_params
  		params.require(:pet).permit(:person_id, :type_id, :sex, :size, :color, :description, pet_photos_attributes: [:image])
  end
