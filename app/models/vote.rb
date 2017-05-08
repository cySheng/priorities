class Vote < ApplicationRecord
	belongs_to :user
	belongs_to :priority

	enum direction: [:nochoice, :upvote, :downvote]

	def check
		last = Vote.where(priority_id: self.priority_id, user_id: self.user_id)
		if last == nil
			return true
		elsif self.direction == last.direction
			
		else
			return false
		end
	end
end
