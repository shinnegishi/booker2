class AddProfileImageToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :profile_image_id, :string
  end
end
