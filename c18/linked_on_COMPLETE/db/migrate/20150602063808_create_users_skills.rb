class CreateUsersSkills < ActiveRecord::Migration
  def change
    create_table :users_skills do |t|
      t.integer :skill_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
