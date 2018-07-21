require 'pry'
class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    new_appt = Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select do |song_instance|
      song_instance.doctor == self
    end
  end

  def patients
    appointments.map do |one_song|
      one_song.patient
    end
  end
end
