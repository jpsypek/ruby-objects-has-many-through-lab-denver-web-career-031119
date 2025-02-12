class Patient

  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{|app|
    app.patient == self}
  end

  def doctors
    Appointment.all.map{ |app|
    if app.patient == self
      app.doctor
    end}
  end

end
