class RemoveEmailFromProfils < ActiveRecord::Migration[7.1]
  def change
    remove_column :profils, :email
  end
end
