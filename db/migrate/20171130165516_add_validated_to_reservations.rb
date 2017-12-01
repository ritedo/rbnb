class AddValidatedToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :validated, :boolean
  end
end
