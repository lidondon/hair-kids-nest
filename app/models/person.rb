class Person < ApplicationRecord
	has_many :pets
	has_many :blacklists
	validates :name, presence: true
end
