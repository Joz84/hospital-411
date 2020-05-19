require "csv"

class PatientRepository
  def initialize(csv_file, room_repo)
    @room_repo = room_repo
    @csv_file = csv_file
    @patients = []
    load_csv
  end

  def all
    @patients
  end

  def add(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
    save_csv
  end

  def load_csv
    CSV.foreach(@csv_file, { headers: :first_row, header_converters: :symbol }) do |row|
      id = row[:id].to_i
      name = row[:name]
      gender = row[:gender]
      cured = row[:cured] == "true"
      room = @room_repo.find(row[:room_id])
      @patients << Patient.new(id: id, name: name, gender: gender, cured: cured, room: room)
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end

  def save_csv

  end

end
