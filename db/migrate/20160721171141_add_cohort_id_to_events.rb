class AddCohortIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :cohort_id, :integer
  end
end
