class Patient 
  @@all = []
  attr_reader :name 
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  
  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end
  
  def doctors 
    doctors = []
    appointments.each{|appt| doctors << appt.doctor}
    doctors
  end
  
end