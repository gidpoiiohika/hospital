module AppointmentsHelper
  def status_color(appointment)
    case appointment.status
    when 'open'
      "color: yellowgreen;"
    when 'closed'
      "color: red;"
    end
  end
end
