class RenameCvsTableToCvTable < ActiveRecord::Migration[7.1]
  def change
    rename_table :cvs, :cv
  end
end
