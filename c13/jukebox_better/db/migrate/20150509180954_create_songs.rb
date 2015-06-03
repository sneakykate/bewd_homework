class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :Artist
      t.string :Title
      t.integer :Year
      t.string :Time

      t.timestamps null: false
    end
  end
end
