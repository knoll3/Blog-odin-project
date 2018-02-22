class Post < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  validates :content , presence: true
  validates :title   , presence: true
end
