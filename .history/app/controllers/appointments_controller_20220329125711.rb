class AppointmentsController < ApplicationController

  WORKING_HOURS = 9...17

  def index
    @therapists = Therapist.all
  end

  def show
    duration = params[:duration].to_i || 30
    @date = Date.parse(params[:date] || Date.today.to_s).in_time_zone.to_datetime
    start_time = @date + WORKING_HOURS.first.hours
    end_time = @date + WORKING_HOURS.last.hours

    @slots = []
    (60 / duration * WORKING_HOURS.count).times do |i|
      @slots << { 
        start: start_time + (i * duration).minutes,
        end: start_time + (i * duration).minutes + duration.minutes
      }
    end
    therapists = Therapist.where(id: params[:ids])
    @therapists = therapists.preload(:appointments)

  end
end
# .joins(:appointments).where(appointments: { start: start_time..end_time })