class CreateAirings < ActiveRecord::Migration
  def change
    create_table :airings do |t|
      t.string :show_id
      t.string :client_id
      t.decimal :gross_cost
      t.decimal :net_cost
      t.date :airdate
      t.string :airweek_id

      t.timestamps null: false
    end
  end
end
