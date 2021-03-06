class PatientInfo < ActiveRecord::Base
	belongs_to :patient
	validates :patient_id, uniqueness: true

	attributes = ["address", "email", "city", "state", "zipcode", "sex", "birthdate", "relationship_status", "employer_or_school", "occupation", "employer_or_school_address", "employer_or_school_phone", "referrer"] 

	attributes.each do |attribute|
		validates_presence_of attribute
	end

end
