class TherapistsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    @therapist = Therapist.find(params[:id])
    @appointments = 
  end
end
