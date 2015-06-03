class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :name
      t.boolean :broadcast_cal
      t.string :email

      t.timestamps null: false
    end
  end
end
