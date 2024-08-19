class CreateCVs < ActiveRecord::Migration[7.1]
  def change
    create_table :c_vs do |t|
      t.text :exhibitions
      t.text :personalia
      t.text :education
      t.text :grant_and_prizes
      t.text :residencies
      t.text :permanent_installations
      t.text :hosting
      t.text :teaching
      t.text :membership
      t.text :scientific
      t.references :profils, null: false, foreign_key: true

      t.timestamps
    end
  end
end
