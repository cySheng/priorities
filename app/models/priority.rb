class Priority < ApplicationRecord
	validates :title, presence: true
	belongs_to :user
	has_many :votes
end
