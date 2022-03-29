class AppointmentsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    working_hours = 9..17
    duration = params[:duration]
    start_time = Date.parse(params[:date]).in_time_zone.to_datetime + working_hours.first.hours

    16.times do |x|
    array << { start: start_time + (x*duration).minutes }
      irb(main):078:0> end

  end
end
