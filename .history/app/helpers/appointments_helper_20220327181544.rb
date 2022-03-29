module AppointmentsHelper
  def reserved_slot?(slot, appointments)
    appointments.each do |a|
      if 
      return true if a.start < slot[:end] && slot[:start] < a.end
    end
  end
end
