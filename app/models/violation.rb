class Violation < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
