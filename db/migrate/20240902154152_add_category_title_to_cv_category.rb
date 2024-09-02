class AddCategoryTitleToCvCategory < ActiveRecord::Migration[7.1]
  def change
    add_column :cv_categories, :category_title, :string
  
  end
end
