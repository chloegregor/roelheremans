class CreateProfils < ActiveRecord::Migration[7.1]
  def change
    create_table :profils do |t|
      t.text :about
      t.string :email
      t.string :pic_url
      t.string :cv_url

      t.timestamps
    end
  end
end
