class AddCoverToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :cover, :boolean, default: false
  end
end
