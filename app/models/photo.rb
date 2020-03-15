class Photo < ApplicationRecord
  attachment :profile_image, type: image
end
