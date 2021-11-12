hospital = Hospital.create(name: "Grey Sloan Memorial Hospital")
dr_bailey = hospital.doctors.create(name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University")
dr_cassey = hospital.doctors.create(name: "John Cassey", specialty: "General Surgery", university: "Harvard University")

patient1 = Patient.create(name: "Hannah", age: 7)
patient2 = Patient.create(name: "Sandy", age: 35)
patient3 = Patient.create(name: "Rick", age: 60)
patient4 = Patient.create(name: "Harlo", age: 12)
patient5 = Patient.create(name: "Jason", age: 26)

doctor_patient1 = DoctorPatient.create(doctor_id: dr_bailey.id, patient_id: patient1.id)
doctor_patient2 = DoctorPatient.create(doctor_id: dr_bailey.id, patient_id: patient2.id)
doctor_patient3 = DoctorPatient.create(doctor_id: dr_bailey.id, patient_id: patient3.id)
doctor_patient4 = DoctorPatient.create(doctor_id: dr_cassey.id, patient_id: patient4.id)
doctor_patient5 = DoctorPatient.create(doctor_id: dr_cassey.id, patient_id: patient5.id)
