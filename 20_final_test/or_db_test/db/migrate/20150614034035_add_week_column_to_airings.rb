class AddWeekColumnToAirings < ActiveRecord::Migration
  def change
    add_column :airings, :bcastweek, :string
  end
end
