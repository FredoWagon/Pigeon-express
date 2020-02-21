class AddVotedToBooking < ActiveRecord::Migration[5.2]
  def change
     add_column :bookings, :voted, :boolean, default: false
  end
end
