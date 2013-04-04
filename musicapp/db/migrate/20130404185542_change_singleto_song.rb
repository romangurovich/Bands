class ChangeSingletoSong < ActiveRecord::Migration

  def up
    drop_table :singles

    create_table :songs do |t|
      t.string :name
      t.integer :album_id

      t.timestamps
    end

    add_index :songs, :name
  end

  def down
    drop_table :songs

    create_table :singles do |t|
      t.string :name
      t.integer :band_id

      t.timestamps
    end

    add_index :singles, :name
  end



end
