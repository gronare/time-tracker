class Appointment < ApplicationRecord
  belongs_to :therapist

  def end
    start + self.duration.minutes
  end
end
