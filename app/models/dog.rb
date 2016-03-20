class Dog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validate :picture_size

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end

end
