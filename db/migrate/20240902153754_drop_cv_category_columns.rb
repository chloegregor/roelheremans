class DropCvCategoryColumns < ActiveRecord::Migration[7.1]
  def change
    remove_column :cv_categories, :exhibitions, :text
    remove_column :cv_categories, :personalia, :text
    remove_column :cv_categories, :education, :text
    remove_column :cv_categories, :grant_and_prizes, :text
    remove_column :cv_categories, :residencies, :text
    remove_column :cv_categories, :permanent_installations, :text
    remove_column :cv_categories, :hosting, :text
    remove_column :cv_categories, :teaching, :text
    remove_column :cv_categories, :membership, :text
    remove_column :cv_categories, :scientific, :text
  end
end
