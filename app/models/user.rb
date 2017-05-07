class User < ApplicationRecord
  include Clearance::User
  has_many :priorities
  has_many :votes
  enum role: [:normal, :special, :superadmin]

end
