class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
