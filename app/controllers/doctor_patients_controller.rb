class DoctorPatientsController < ApplicationController


  def destroy
    doctor = Doctor.find(params[:id])
    patient = Patient.find(params[:patient_id])

    doctor_patient = DoctorPatient.find_by(doctor_id: doctor.id, patient: patient)
    doctor_patient.destroy
    redirect_to '/doctors/:id'
  end



  # def destroy
  #   doctor_patient = DoctorPatient.find_by(doctor_id: params[:id], patient_id: params[:patient_id])
  #   doctor_patient.destroy
  #   redirect_to '/doctors/:id'
  # end
end
