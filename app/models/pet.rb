class Pet < ApplicationRecord
	belongs_to :person
	belongs_to :type
	belongs_to :region
	has_many :pet_photos, dependent: :destroy
	validates :type, :person_id, :region_id, presence: true
	accepts_nested_attributes_for :pet_photos 

	before_validation :set_default_status

	def set_default_status
		self.status = true if self.status == nil
	end
end
