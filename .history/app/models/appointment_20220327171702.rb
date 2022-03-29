class Appointment < ApplicationRecord
  belongs_to :therapist

  def end
    start + duration.minutes
  end
end
