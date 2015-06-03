class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.float :commission
      t.string :location

      t.timestamps null: false
    end
  end
end
