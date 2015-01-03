class Patient < ActiveRecord::Base

default_scope -> { order('patients.last_name ASC') }

validates :first_name, :middle_initial, :last_name, length: { in: 1..20 }
has_one :patient_info
has_one :dental_insurance
has_one :dental_history	
end
