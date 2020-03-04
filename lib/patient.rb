class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    Patient.all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end

  def doctors
    appointments.collect{|appt| appt.doctor}
  end
end
