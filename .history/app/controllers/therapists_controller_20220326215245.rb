class TherapistsController < ApplicationController
  def index
    @therapists = Therapist
  end

  def show
  end
end
