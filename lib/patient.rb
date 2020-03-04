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