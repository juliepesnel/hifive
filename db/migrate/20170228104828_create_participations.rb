class CreateParticipations < ActiveRecord::Migration[5.0]
  def change
    create_table :participations do |t|
      t.column :status, :integer, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
