class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :date
      t.string :event_type
      t.integer :time_to_generate
      t.string :notes
      t.string :owner

      t.timestamps
    end
  end
end
