class AppointmentsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    Date.parse(params[]).in_time_zone.to_datetime + working_hours.first.hours
  end
end
