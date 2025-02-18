require 'rails_helper'

RSpec.describe Patient do
  describe 'relationships' do
    it { should have_many(:doctor_patients) }
    it { should have_many(:doctors).through(:doctor_patients) }
  end

  it 'can order patients from oldest to youngest' do
    patient1 = Patient.create(name: "Hannah", age: 7)
    patient2 = Patient.create(name: "Sandy", age: 35)
    patient3 = Patient.create(name: "Rick", age: 60)
    patient4 = Patient.create(name: "Harlo", age: 12)
    patient5 = Patient.create(name: "Jason", age: 26)

    expect(Patient.age_order).to eq([patient3, patient2, patient5, patient4, patient1])

  end

end
