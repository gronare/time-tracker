module AppointmentsHelper
  def reserved_slot?(slot, appointments)
    appointments.each do |a|
      if a.start < slot[:end] && slot[:start] < a.end
        return true
      else
        false
      end
    end
  end
end
