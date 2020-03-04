class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end
end
