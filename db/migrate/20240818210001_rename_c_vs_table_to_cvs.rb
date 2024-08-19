class RenameCVsTableToCvs < ActiveRecord::Migration[7.1]
  def change
    rename_table :c_vs, :cvs
  end
end
