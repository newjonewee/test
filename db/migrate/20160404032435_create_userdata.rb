class CreateUserdata < ActiveRecord::Migration
  def change
    create_table :userdata do |t|
      t.string :name
      t.string :data

      t.timestamps null: false
    end
  end
end
