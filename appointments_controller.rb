class AppointmentsController

  def initialize()

  end

  def create
    # Demander à la vue de demander à l'urilsateur l'id du patient et la stocker dans une variable
    patient_id = @view.ask_patient_id
    # Demander à la vue de demander à l'urilsateur l'id du docteur et la stocker dans une variable
    doctor_id = @view.ask_doctor_id
    # Demander à la vue de demander à l'urilsateur la date et la stocker dans une variable
    date = @view.ask_date
    # Demander au repo des patients de retrouver le patient
    patient = @patient_repo.find(patient_id)
    # Demander au repo des docteurs de retrouver le docteur
    doctor = @doctor_repo.find(doctor_id)
    # Demander au model Appointment de créer une instance
    appointment = Appointment.new(doctor: doctor, patient: patient, date: date)
    # Demander au rep de consulations d'ajouter cette instance dans le tableau
    @appointment_repo.add(appointment)
  end
end
