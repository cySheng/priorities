class Priority < ApplicationRecord
	validates :title, presence: true
	belongs_to :user
	has_many :votes

	def check
		last = self.user.priorities[-2]
		if last == nil || last.created_at.to_date == Date.today
			return false
		end
		return true
	end
end
