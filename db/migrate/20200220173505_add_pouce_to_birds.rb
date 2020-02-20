class AddPouceToBirds < ActiveRecord::Migration[5.2]
  def change
    add_column :birds, :poucevert, :integer
    add_column :birds, :poucerouge, :integer
  end
end
