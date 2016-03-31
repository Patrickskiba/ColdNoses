class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :title, presence: true, length: {minimum: 5, maximum: 35}
  validates :comment, presence: true, length: {minimum: 15, maximum: 500}
end
