require_relative "patient.rb"
require_relative "room.rb"
require_relative "patient_repository.rb"
riri = Patient.new( name: "Riri", gender: "male", cured: false )
# fifi = Patient.new( name: "Fifi", gender: "male", cured: false )
# loulou = Patient.new( name: "Loulou", gender: "male", cured: false )
# # p riri.name
# # p riri.cured?
# # riri.cure!
# # p riri.cured?


# yellow_room = Room.new(name: "Yellow", capacity: 2)

# yellow_room.add_patient(riri)
# # p yellow_room

# yellow_room.add_patient(fifi)
# # p yellow_room

# # yellow_room.add_patient(loulou)
# # p yellow_room


# p riri.room.name

patient_repo = PatientRepository.new("patients.csv")

patient_repo.add(riri)

p patient_repo.all
