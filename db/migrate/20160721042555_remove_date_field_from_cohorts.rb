class RemoveDateFieldFromCohorts < ActiveRecord::Migration[5.0]
  def change
    remove_column :cohorts, :date, :integer
  end
end
