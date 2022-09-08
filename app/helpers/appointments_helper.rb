module AppointmentsHelper
  def status_color(appointment)
    case appointment.status
    when 'open'
      'text-danger'
    when 'closed'
      'text-success'
    end
  end
end
