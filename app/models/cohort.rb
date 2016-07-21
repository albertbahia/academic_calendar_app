class Cohort < ApplicationRecord
  has_many :events, dependent: :destroy

  def self.find_matched_events
    # events = Event.where(cohort_id: self.ids)
    # matched_users.each do |matched_user|
		# 	Match.find_or_create_by({
		# 		user_id1: self.id,
		# 		user_id2: matched_user.id
		# 		})
		# end

    cohorts = self.ids.map do |id|
      Event.where(cohort_id: id)
      # binding.pry
    end
    # binding.pry
  end
end
