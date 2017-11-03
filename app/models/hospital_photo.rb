class HospitalPhoto < ApplicationRecord
	belongs_to :hospital
	mount_uploader :image, ImageUploader
end
