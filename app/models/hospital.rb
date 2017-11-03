class Hospital < ApplicationRecord
	has_many :hospital_photos
	validates :name, :address, presence: true
	accepts_nested_attributes_for :hospital_photos 
end
