class TherapistsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    @therapist = Therapist.find(params[:id])
    @appointments = @therapist.appointments.order("start")
  end
end
