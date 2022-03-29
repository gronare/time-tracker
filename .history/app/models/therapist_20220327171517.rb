class Therapist < ApplicationRecord
  has_many :appointments

  def end
    self.start
  end
end
