class AddCoverInVideos < ActiveRecord::Migration[7.1]
  def change
    add_column :videos, :cover, :boolean, default: false
  end
end
