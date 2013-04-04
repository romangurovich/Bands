class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :name
      t.integer :band_id

      t.timestamps
    end

    add_index :singles, :name

  end
end
