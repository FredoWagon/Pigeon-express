class CreateBirds < ActiveRecord::Migration[5.2]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :species
      t.integer :capacity
      t.integer :range
      t.integer :rating
      t.integer :price
      t.string :category
      t.text :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
