class Like < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  # belongs_to :like, class_name: "User"
  
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
