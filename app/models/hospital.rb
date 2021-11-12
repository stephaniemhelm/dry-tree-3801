class Hospital < ApplicationRecord
  has_many :doctors

  def count_doctors
    doctors.count
  end

end
