require 'rails_helper'

RSpec.describe Hospital do
  it 'can show doctor information, hospital, and patients' do
    hospital = Hospital.create(name: "Grey Sloan Memorial Hospital")
    dr_bailey = hospital.doctors.create(name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University")
    dr_cassey = hospital.doctors.create(name: "John Cassey", specialty: "General Surgery", university: "Harvard University")

    visit "/hospitals/#{hospital.id}"

    expect(page).to have_content(hospital.name)
    expect(page).to have_content(dr_bailey.university)
    expect(page).to have_content(dr_cassey.university)
    expect(page).to have_content("Doctor Count: 2")
  end
end
