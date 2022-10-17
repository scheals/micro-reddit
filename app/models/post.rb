class Post < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :title, length: { minimum: 6 }, presence: true
  validates :user_id, presence: true
end
