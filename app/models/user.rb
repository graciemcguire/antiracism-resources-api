class User < ApplicationRecord
  validates :email, uniqueness: true
  has_secure_password

  has_many :votes
  has_many :resources, through: :votes
  # has_many :resources, :as => :added_resources
end
