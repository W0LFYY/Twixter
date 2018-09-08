class Post < ApplicationRecord
  belongs_to :user_bio
  has_many :comments
end
