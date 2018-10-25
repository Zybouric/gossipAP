class Gossip < ApplicationRecord
  has_many :comment
  has_many :tag
  belongs_to :user
end
