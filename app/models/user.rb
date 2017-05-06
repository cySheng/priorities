class User < ApplicationRecord
  include Clearance::User
  has_many :priorities
  enum role: [:normal, :special, :superadmin]
end
