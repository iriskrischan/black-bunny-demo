class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :date
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.integer :covers
      t.string :status, default: 'BOOKED'
      t.text :dietary_requirements
      t.text :reservation_notes
      t.references :time_slot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
