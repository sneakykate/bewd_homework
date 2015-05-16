class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :sex
      t.boolean :fixed
      t.string :num
      t.string :img_url

      t.timestamps null: false
    end
  end
end
