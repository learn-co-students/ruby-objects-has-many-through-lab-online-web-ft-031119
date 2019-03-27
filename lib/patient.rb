class Patient
@@all=[]
attr_accessor :name, :date

def self.all
  @@all 
end 

def initialize(name)
  @name = name 
  @@all << self
end 


def new_appointment(doctor,date)
  Appointment.new(self, doctor, date)
end 

def appointments
Appointment.all.select{|appointments|appointments.patient==self}
end 

def doctors 
self.appointments.collect{|appointments| appointments.doctor}
end 

end 