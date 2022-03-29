module AppointmentsHelper
  def reserved_slot?(slot, appointments)
    return false unless appointments

    appointments.each do |a|
      return true if a.start < slot[:end] && slot[:start] < a.end
    end
    false
  end
end
