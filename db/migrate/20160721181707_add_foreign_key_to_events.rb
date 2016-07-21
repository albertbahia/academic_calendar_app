class AddForeignKeyToEvents < ActiveRecord::Migration[5.0]
  def change
    add_index :events, :cohort_id
  end
end
