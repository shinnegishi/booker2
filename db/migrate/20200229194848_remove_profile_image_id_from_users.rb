class RemoveProfileImageIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :profile_image_id, :integer
  end
end
