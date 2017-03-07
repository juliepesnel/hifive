class CreateTastes < ActiveRecord::Migration[5.0]
  def change
    create_table :tastes do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
