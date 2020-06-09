class Resource < ApplicationRecord
  has_many :votes
  has_many :users, through: :votes
  # belongs_to :added_resource, :polymorphic => true
  # has_one :author
end
