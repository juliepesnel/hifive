class RemoveDueAtFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :due_at, :time
  end
end
