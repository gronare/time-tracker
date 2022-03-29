class Therapist < ApplicationRecord
  has_many :appointments

  def end
    self.start + self.duration.minutes
  end
end
