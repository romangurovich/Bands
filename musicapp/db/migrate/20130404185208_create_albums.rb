class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|

      t.string :title
      t.integer :band_id

      t.timestamps
    end


    add_index :albums, :title
    add_index :albums, :band_id
   end
end
