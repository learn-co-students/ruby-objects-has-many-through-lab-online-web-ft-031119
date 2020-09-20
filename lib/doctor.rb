class Doctor 
  @@all = []
  attr_reader :name 
  
  def self.all 
    @@all
  end
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments 
    Appointment.all.select{|appt| appt.doctor == self}
  end
  
  def patients 
    patients = []
    self.appointments.each{|appt| patients << appt.patient}
    patients
  end
  
end