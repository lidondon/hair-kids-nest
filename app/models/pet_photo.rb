class PetPhoto < ApplicationRecord
	belongs_to :pet
	mount_uploader :image, ImageUploader
end
