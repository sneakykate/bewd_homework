class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :clientname
      t.string :commissionstype
      t.string :AM_name
      t.string :PM_or_AC_name
      t.string :PM_or_AC2_name
      t.string :Analytics_name

      t.timestamps null: false
    end
  end
end
