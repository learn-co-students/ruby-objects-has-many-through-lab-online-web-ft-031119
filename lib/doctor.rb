class Doctor
  
  attr_accessor :appointments
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    appointments << appointment
    appointment
  end
  
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end