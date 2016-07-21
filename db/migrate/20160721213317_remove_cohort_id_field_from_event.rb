class RemoveCohortIdFieldFromEvent < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :cohort_id, :integer
  end
end
