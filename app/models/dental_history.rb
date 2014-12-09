class DentalHistory < ActiveRecord::Base
	belongs_to :patient
	validates :patient_id, uniqueness: true
end
