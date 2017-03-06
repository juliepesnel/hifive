class AddColumnToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :due_at, :datetime
    add_column :events, :title, :string
  end
end
