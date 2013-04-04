class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.string :name
      t.integer :single_id

      t.timestamps
    end

    add_index :recordings, :name
  end
end
