class RemoveCvUrlFromProfils < ActiveRecord::Migration[7.1]
  def change
    remove_column :profils, :cv_url
  end
end
