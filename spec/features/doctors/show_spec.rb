require 'rails_helper'

RSpec.describe Doctor do
  it 'can show doctor information, hospital, and patients' do
    hospital = Hospital.create(name: "Grey Sloan Memorial Hospital")
    dr_bailey = hospital.doctors.create(name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University")

    patient1 = Patient.create(name: "Hannah", age: 7)
    patient2 = Patient.create(name: "Sandy", age: 35)
    patient3 = Patient.create(name: "Rick", age: 60)

    doctor_patient1 = DoctorPatient.create(doctor_id: dr_bailey.id, patient_id: patient1.id)
    doctor_patient2 = DoctorPatient.create(doctor_id: dr_bailey.id, patient_id: patient2.id)
    doctor_patient3 = DoctorPatient.create(doctor_id: dr_bailey.id, patient_id: patient3.id)

    visit "/doctors/#{dr_bailey.id}"

    expect(page).to have_content(dr_bailey.name)
    expect(page).to have_content(dr_bailey.specialty)
    expect(page).to have_content(dr_bailey.university)
    expect(page).to have_content(hospital.name)
    expect(page).to have_content(patient1.name)
    expect(page).to have_content(patient2.name)
    expect(page).to have_content(patient3.name)
  end


end
