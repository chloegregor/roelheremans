class RenameCvToCvCategory < ActiveRecord::Migration[7.1]
  def change
    rename_table :cv, :cv_categories
  end
end
