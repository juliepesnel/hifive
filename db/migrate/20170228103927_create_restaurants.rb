class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :picture
      t.string :phone_number
      t.string :website
      t.string :category

      t.timestamps
    end
  end
end
