class AppointmentsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    working_hours = 9..17
    duration = params[:duration]
    start_time = Date.parse(params[:date]).in_time_zone.to_datetime + working_hours.first.hours

    scope = 
    16.times do |i|
      array << { start: start_time + (i * duration).minutes }
    end

  end
end
