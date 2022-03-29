class AppointmentsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    
  end
end
