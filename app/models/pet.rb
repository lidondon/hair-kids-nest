class Pet < ApplicationRecord
	belongs_to :person
	belongs_to :type
	has_many :pet_photos, dependent: :destroy
	validates :type, :person_id, presence: true
	accepts_nested_attributes_for :pet_photos 
end
