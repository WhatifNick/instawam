class Imagepost < ApplicationRecord
  belongs_to :user
  # has_many :image
  mount_uploader :image, ImagepostUploader
  # mount_uploader :image, TweetImageUploader

end
