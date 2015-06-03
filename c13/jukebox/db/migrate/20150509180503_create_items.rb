class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :Title
      t.string :Artist
      t.integer :Year
      t.string :Time

      t.timestamps null: false
    end
  end
end
