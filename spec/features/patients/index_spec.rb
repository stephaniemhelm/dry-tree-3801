require 'rails_helper'

RSpec.describe Patient do
  it 'can list patient names and ages from oldest to youngest' do
    patient1 = Patient.create(name: "Hannah", age: 7)
    patient2 = Patient.create(name: "Sandy", age: 35)
    patient3 = Patient.create(name: "Rick", age: 60)
    patient4 = Patient.create(name: "Harlo", age: 12)
    patient5 = Patient.create(name: "Jason", age: 26)

    visit '/patients'

    expect(page).to have_content(patient1.name)
    expect(page).to have_content(patient1.age)
  end
end
