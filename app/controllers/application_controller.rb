class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @cohorts = Cohort.all
  end
end
