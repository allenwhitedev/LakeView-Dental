class CreateDentalInsurances < ActiveRecord::Migration
  def change
    create_table :dental_insurances do |t|
      t.integer :patient_id

      # Dental Insurance 
			t.string :account_owner 
			t.string :account_owner_to_patient_relationship 
			t.string :account_owner_insurance_company 
			t.integer :account_owner_group_number 
			t.boolean :account_owner_additional_insurance 

			t.string :subscriber_name 
			t.date :subscriber_birthdate 
			t.integer :subscriber_ss 
			t.string :subsriber_relationship_to_patient 
			t.string :subscriber_insurance_company 
			t.integer :subscriber_group_number 

			# Release 
			t.string :name_of_insurance_company 
			t.string :doctor_name 
			t.string :patient_signature 
			t.string :printed_signature 
			t.date :signature_date 
			t.string :signer_relationship_to_patient 

      t.timestamps
    end
  end
end
