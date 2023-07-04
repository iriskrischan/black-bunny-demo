class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :max_capacity
      t.time :opening_time_start
      t.time :opening_time_end
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
