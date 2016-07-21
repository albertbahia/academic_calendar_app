class RemoveFieldsFromCohorts < ActiveRecord::Migration[5.0]
  def change
    remove_column :cohorts, :event_type, :string
    remove_column :cohorts, :time_to_generate, :integer
    remove_column :cohorts, :owner, :string
    remove_column :cohorts, :notes, :string
  end
end
