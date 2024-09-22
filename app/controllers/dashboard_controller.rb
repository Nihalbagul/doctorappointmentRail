class DashboardController < ApplicationController
  before_action :require_login

  def index
    @patients = Patient.all

    # Data for graph: number of patients registered by day
    @patient_registration_data = Patient.group_by_day(:registered_at).count
  end
  
end
