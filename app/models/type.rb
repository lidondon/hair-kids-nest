class Type < ApplicationRecord
	has_many :pets
	validates :title, presence: true
end
