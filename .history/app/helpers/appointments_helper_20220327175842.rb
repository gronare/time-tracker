module AppointmentsHelper
    def reserved_slot?(slot, appointments)
        appointments.each do |a|
          return true if a.start < slot.end && slot.start_time < a.end
        end
      end
end
