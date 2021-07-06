require 'pry'
class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []

  end

  def self.all
    @@all
  end

  def doctors
    array = []
    Appointment.all.select do |app|
      if app.patient == self
        array << app.doctor
      end
      end
      array
  end

  def new_appointment(doctor , date)
    new_app = Appointment.new(self,doctor, date)
    @appointments << new_app
    new_app

  end

  def appointments
    @appointments

  end

end
