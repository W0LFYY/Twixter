class UserBio < ApplicationRecord
  validate :one_bio_per_user

  private

  def one_bio_per_user
     if current_user.user_bio && current_user.user_bio != self
       errors.add(:current_user, "already has a bio")
     end
  end
end
