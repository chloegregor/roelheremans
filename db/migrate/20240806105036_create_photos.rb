class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.string :url
      t.references :work, null: false, foreign_key: true
      t.string :legend


      t.timestamps
    end
  end
end
