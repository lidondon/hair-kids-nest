class HospitalsController < ApplicationController

	def index
  		@hospitals = Hospital.all
   end

   def create
  		@hospital = Hospital.new hospital_params
  		# binding.pry

  		if @hospital.save
  			if params[:hospital_photos] != nil && params[:hospital_photos][:image] != nil
  				params[:hospital_photos][:image].each do |img|
  					@hospital.hospital_photos.create(image: img)
  				end
  			else
  				flash[:notice] = err
  				redirect_to new_pet_url
  			end
  		else
  			flash[:notice] = @pet.errors.messages
  			render new_pet_url
  		end
  end

  def new
  		@hospital = Hospital.new
  		@photos = @hospital.hospital_photos.build
  end






	private

	def hospital_params
  		params.require(:hospital).permit(:name, :phone, :address, hospital_photos_attributes: [:image])
	end
end
