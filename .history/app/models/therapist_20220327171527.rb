class Therapist < ApplicationRecord
  has_many :appointments

  def end
    self.start + d
  end
end
