class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :netname
      t.boolean :bcast_month

      t.timestamps null: false
    end
  end
end
