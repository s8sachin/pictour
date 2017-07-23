class Post < ApplicationRecord
	mount_uploader :pic_url, ImageUploader
	belongs_to :user
	has_many :comments
end
