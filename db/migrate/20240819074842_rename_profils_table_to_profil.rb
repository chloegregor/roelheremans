class RenameProfilsTableToProfil < ActiveRecord::Migration[7.1]
  def change
    rename_table :profils, :profil
  end
end
