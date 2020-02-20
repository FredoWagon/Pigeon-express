class RemoveRatingFromBirds < ActiveRecord::Migration[5.2]
  def change
    remove_column :birds, :rating, :integer
  end
end
