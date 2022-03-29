class Therapist < ApplicationRecord
  has_many :appointments

  def end
    self.start + self.duration.
  end
end
