class Patient

  attr_accessor :name, :appointment, :doctor

  def initialize(name)
    @name = name
  end

  def appointments
    Appointment.all.select do |song_instance|
      song_instance.patient == self
    end
  end

  def new_appointment(doctor, date)
    new_appt = Appointment.new(self, doctor, date)
    #binding.pry
  end

  def doctors
    appointments.map do |one_song|
      one_song.doctor
    end
  end


end
