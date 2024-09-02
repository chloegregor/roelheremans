class AddContentToCvCategory < ActiveRecord::Migration[7.1]
  def change
    add_column :cv_categories, :content, :text
  end
end
