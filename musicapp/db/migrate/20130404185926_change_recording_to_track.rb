class ChangeRecordingToTrack < ActiveRecord::Migration
  def up
    drop_table :recordings
    create_table :tracks do |t|
      t.string :name
      t.integer :song_id

      t.timestamps
    end
    add_index :tracks, :name
  end

  def down
    drop_table :tracks
    create_table :recordings do |t|
      t.string :name
      t.integer :single_id

      t.timestamps
    end
    add_index :recordings, :name

  end
end
