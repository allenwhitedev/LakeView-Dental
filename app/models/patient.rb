class Patient < ActiveRecord::Base
validates :first_name, :middle_initial, :last_name, length: { in: 1..20 }
has_one :patient_info
has_one :dental_insurance
has_one :dental_history	
end
