class Priority < ApplicationRecord
	validates :title, presence: true
	belongs_to :user
	acts_as_votable
	# has_many :votes

	def check
		# last = self.user.priorities.count
		# if last > 2
		# 	return true
		# else 
		# 	return false
		# end
		last = self.user.priorities[-2]
		if last == nil
			return true
		elsif last.created_at.to_date + 2 > Date.today
			return false
		end
		return true
	end

	# def total
	# 	votes = Vote.where(priority_id: self.id)
	# 	counter = 0
	# 	votes.each do |vote|
	# 		if vote.direction == "upvote"
	# 			counter += 1
	# 		elsif vote.direction == "downvote"
	# 			counter -= 1
	# 		end
	# 	end
	# 	counter
	# end
end
