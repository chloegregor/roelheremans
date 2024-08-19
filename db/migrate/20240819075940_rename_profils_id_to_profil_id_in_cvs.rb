class RenameProfilsIdToProfilIdInCvs < ActiveRecord::Migration[7.1]
  def change
    rename_column :cvs, :profils_id, :profil_id
  end
end
