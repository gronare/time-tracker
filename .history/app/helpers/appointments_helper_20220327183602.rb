module AppointmentsHelper
  def reserved_slot?(slot, appointments)
    appointments.each do |a|
      if a.start < slot[:end] && slot[:start] < a.end
        
      end
    end
    false
  end
end
