class Vote < ApplicationRecord
	belongs_to :user
	belongs_to :priority

	enum choice: [:none, :upvote, :downvote]
end
