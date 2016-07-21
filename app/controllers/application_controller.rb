class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @cohorts = Cohort.all
    cohort_ids = @cohorts.map do |cohort|
      cohort.id
    end
    # binding.pry

    @events = Event.all
    # binding.pry
  end
end
