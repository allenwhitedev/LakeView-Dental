class PatientInfo < ActiveRecord::Base
	belongs_to :patient
	validates :patient_id, uniqueness: true

	attributes = ["address", "email", "city", "state", "zipcode", "sex", "birthdate", "relationship_status", "employer_or_school", "occupation", "employer_or_school_address", "employer_or_school_phone", "spouse_name", "spouse_birthdate", "spouse_employer", "referrer"] 

	#attribute = "address"
	#validates_presence_of :address

	# attributes.each do |attribute|
	# 	validates_presence_of attribute
	# end

end
