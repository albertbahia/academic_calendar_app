class CreateCohorts < ActiveRecord::Migration[5.0]
  def change
    create_table :cohorts do |t|
      t.date :date
      t.string :class_code
      t.string :event_type
      t.string :notes
      t.integer :time_to_generate
      t.string :owner

      t.timestamps
    end
  end
end
