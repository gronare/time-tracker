class Appointment < ApplicationRecord
  belongs_to :therapist

  def end
    self.start + self.duration.minutes
  end
end
