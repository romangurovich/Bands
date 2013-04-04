class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations do |t|
      t.integer :band_id
      t.integer :artist_id

      t.timestamps
    end

    add_index :collaborations, :band_id
    add_index :collaborations, :artist_id
  end
end
