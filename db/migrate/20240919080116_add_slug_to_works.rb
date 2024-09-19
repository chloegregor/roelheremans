class AddSlugToWorks < ActiveRecord::Migration[7.1]
  def change
    add_column :works, :slug, :string
  end
end
