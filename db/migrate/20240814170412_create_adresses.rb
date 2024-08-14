class CreateAdresses < ActiveRecord::Migration[7.1]
  def change
    create_table :adresses do |t|
      t.string :title
      t.string :street
      t.string :zipcode
      t.string :city
      t.string :phone_number
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
