class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end

    add_index :artists, [:first_name, :last_name]

  end
end
