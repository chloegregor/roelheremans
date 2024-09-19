class AddSlugToWorks < ActiveRecord::Migration[7.1]
  def change
    add_column :works, :slug, :string, unique: true
  end
end
