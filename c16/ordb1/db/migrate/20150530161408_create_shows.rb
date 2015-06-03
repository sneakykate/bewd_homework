class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :gross_cost
      t.integer :net_cost
      t.integer :network_id
      t.integer :client_id

      t.timestamps null: false
    end
  end
end
