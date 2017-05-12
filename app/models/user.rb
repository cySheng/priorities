class User < ApplicationRecord
  include Clearance::User
  has_many :priorities, dependent: :destroy, on_delete: :cascade
   acts_as_voter
  # has_many :votes

  validates :password, length: { minimum: 6 }
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, on: :create }

  enum role: [:normal, :special, :superadmin]

end
