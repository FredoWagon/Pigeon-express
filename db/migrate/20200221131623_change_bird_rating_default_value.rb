class ChangeBirdRatingDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :birds, :poucevert, :integer, default: 0
    change_column :birds, :poucerouge, :integer, default: 0

  end
end
