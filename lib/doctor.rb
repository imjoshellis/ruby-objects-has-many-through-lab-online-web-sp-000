class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    Doctor.all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end
end
