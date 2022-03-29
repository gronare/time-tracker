class TherapistsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    @therapist = 
  end
end
