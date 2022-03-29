class AppointmentsController < ApplicationController

  WORKING_HOURS = 9...17

  def index
    @therapists = Therapist.all
  end

  def show
    duration = params[:duration].to_i || 30
    start_time = Date.parse(params[:date] || Date.today.to_s).in_time_zone.to_datetime + WORKING_HOURS.first.hours
    end_time = Date.parse(params[:date] || Date.today.to_s).in_time_zone.to_datetime + WORKING_HOURS.last.hours

    @slots = []
    (60 / duration * WORKING_HOURS.count).times do |i|
      @slots << { 
        start: start_time + (i * duration).minutes,
        end: start_time + (i * duration).minutes + duration.minutes 
      }
    end
    @therapists = Therapist.where(id: [0, 1, 2]).includes(:appointments).where(appointments: {start: start_time..end_time})

  end

  private

  def reserved_slot?(slot, appointments)
    appointments.each do |a|
      return true if a.start < slot.end && slot.start < a.end
    end
  end
end
