class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :picture
      t.string :phone_number
      t.string :website
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
