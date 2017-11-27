class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :user, foreign_key: true
      t.references :bike, foreign_key: true

      t.timestamps
    end
  end
end
