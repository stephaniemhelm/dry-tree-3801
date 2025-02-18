require 'rails_helper'

RSpec.describe Hospital do
  describe 'relationships' do
    it { should have_many(:doctors) }
  end

  it 'can count the number of doctors at hospital' do
    hospital = Hospital.create(name: "Grey Sloan Memorial Hospital")
    dr_bailey = hospital.doctors.create(name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University")
    dr_cassey = hospital.doctors.create(name: "John Cassey", specialty: "General Surgery", university: "Harvard University")

    expect(hospital.count_doctors).to eq(2)
  end 
end
