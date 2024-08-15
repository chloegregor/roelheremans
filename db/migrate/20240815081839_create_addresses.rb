class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :title
      t.references :profil, null: false, foreign_key: true
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :email
      t.string :phone_number
      t.string :website

      t.timestamps
    end
  end
end
