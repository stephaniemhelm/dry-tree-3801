require 'rails_helper'

RSpec.describe Doctor do
  describe 'relationships' do
    it { should belong_to(:hospital) }
    it { should have_many(:doctor_patients) }
    it { should have_many(:patients).through(:doctor_patients) }
  end

  it 'can find hospital name' do
    hospital = Hospital.create(name: "Grey Sloan Memorial Hospital")
    dr_bailey = hospital.doctors.create(name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University")

    expect(dr_bailey.hospital_name).to eq("Grey Sloan Memorial Hospital")
  end


end
