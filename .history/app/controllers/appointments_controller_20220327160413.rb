class AppointmentsController < ApplicationController

  WORKING_HOURS = 9...17

  def index
    @therapists = Therapist.all
  end

  def show
    
    duration = params[:duration] || 30
    start_time = Date.parse(params[:date]).in_time_zone.to_datetime + WORKING_HOURS.first.hours

    @slots = []
    60 / duration * WORKING_HOURS.count.times do |i|
      slots << { start: start_time + (i * duration).minutes }
    end

  end
end
