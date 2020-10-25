class RemoveSongs < ActiveRecord::Migration
  def change
    drop_table :songs

  end
end
