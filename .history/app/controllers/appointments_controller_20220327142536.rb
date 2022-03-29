class AppointmentsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    date = Date.parse(params[:date]).in_time_zone.to_datetime + working_hours.first.hours


  end
end
