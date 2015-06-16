class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :showname
      t.integer :network_id
      t.string :placement

      t.timestamps null: false
    end
  end
end
