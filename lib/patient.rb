class Patient
  
  attr_accessor :appointments
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    appointments << appointment
    appointment
  end
  
  def doctors 
    appointments.map do |appointment|
      appointment.doctor
    end
  end
  
  
end