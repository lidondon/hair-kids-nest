class Blacklist < ApplicationRecord
	belongs_to :person
	validates :person_id, :title, :content, presence: true
end
