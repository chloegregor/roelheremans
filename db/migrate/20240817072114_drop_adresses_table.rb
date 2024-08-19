class DropAdressesTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :adresses
  end
end
