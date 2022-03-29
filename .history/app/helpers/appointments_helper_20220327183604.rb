module AppointmentsHelper
  def reserved_slot?(slot, appointments)
    appointments.each do |a|
      return true if a.start < slot[:end] && slot[:start] < a.end
        
      end
    end
    false
  end
end
