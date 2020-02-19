class AddAddressToBirds < ActiveRecord::Migration[5.2]
  def change
    add_column :birds, :address, :string
  end
end
