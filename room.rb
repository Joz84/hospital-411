class Room
  attr_reader :capacity, :name, :patients
  attr_accessor :id

  def initialize(attrs={})
    @capacity = attrs[:capacity] || 0
    @name = attrs[:name]
    @patients = attrs[:patients] || []   # if attrs[:patients].size <= @capacity
    @id = nil
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise StandardError, "Room is full!" if full?
    patient.room = self
    @patients << patient
  end

end

