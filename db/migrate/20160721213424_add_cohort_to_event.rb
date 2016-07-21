class AddCohortToEvent < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :cohort, foreign_key: true
  end
end
