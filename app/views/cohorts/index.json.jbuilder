json.array!(@cohorts) do |cohort|
  json.extract! cohort, :id, :date, :class_code, :event_type, :notes, :time_to_generate, :owner
  json.url cohort_url(cohort, format: :json)
end
