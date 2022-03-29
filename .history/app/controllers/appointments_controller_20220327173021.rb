class AppointmentsController < ApplicationController

  WORKING_HOURS = 9...17

  def index
    @therapists = Therapist.all
  end

  def show
    
    duration = params[:duration].to_i || 30
    start_time = Date.parse(params[:date] || Date.today.to_s).in_time_zone.to_datetime + WORKING_HOURS.first.hours

    @slots = []
    (60 / duration * WORKING_HOURS.count).times do |i|
      @slots << { start: start_time + (i * duration).minutes, end:  }
    end
    @therapists = Therapist.where(id: [0, 1, 2])

  end

  private

  def reserved_slot?(slot, appointments)
    appointments.each do |a|
      return true if a.start < slot.end_time && slot.start_time < a.end
    end
  end
end
