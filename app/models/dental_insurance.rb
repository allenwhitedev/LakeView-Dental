class DentalInsurance < ActiveRecord::Base
	belongs_to :patient
	validates :patient_id, uniqueness: true

	validates_inclusion_of "account_owner_additional_insurance", in: [true, false]

	attributes = ["account_owner", "account_owner_to_patient_relationship", "account_owner_insurance_company", "account_owner_group_number", "subscriber_name", "subscriber_birthdate", "subsriber_relationship_to_patient", "subscriber_insurance_company", "subscriber_group_number", "name_of_insurance_company", "doctor_name", "patient_signature", "printed_signature", "signature_date", "signer_relationship_to_patient"]

	attributes.each do |attribute|
		validates_presence_of attribute
	end

end
