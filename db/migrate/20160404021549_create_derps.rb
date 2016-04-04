class CreateDerps < ActiveRecord::Migration
  def change
    create_table :derps do |t|
      t.string :title
      t.string :derp

      t.timestamps null: false
    end
  end
end
