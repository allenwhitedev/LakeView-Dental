class CreatePatientInfos < ActiveRecord::Migration
  def change
    create_table :patient_infos do |t|
      t.integer :patient_id
      
      t.string :address 
			t.string :email 
			t.string :city 
			t.string :state 
			t.integer :zipcode 
			
			t.boolean :sex 
			t.date :birthdate 
			t.string :relationship_status 
			
			t.string :employer_or_school 
			t.string :occupation 
			t.string :employer_or_school_address 
			t.string :employer_or_school_phone 

			t.string :spouse_name 
			t.date :spouse_birthdate 
			t.integer :spouse_ss 
			t.string :spouse_employer 

			t.string :referrer 

      t.timestamps
    end
    add_index :patient_infos, :patient_id, unique: true
  end
end
