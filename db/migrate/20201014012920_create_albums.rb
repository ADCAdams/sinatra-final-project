class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :genre
      t.integer :user_id


      t.timestamps null: false
    end
  end
end
