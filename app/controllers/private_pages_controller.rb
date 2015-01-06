class PrivatePagesController < ApplicationController
	
def lakeview_emp_area77
	if !current_user.nil? && current_user.id.in?(1..5)
		@secpats = Patient.all
	else 
		redirect_to lvd_emp_loggin_url
	end
end



def lakeview_emp_area88
	@secpat = Patient.find_by(id: params[:id])
	
	#first two and last two are removed
	@removed_attributes = ["id","patient_id","created_at","updated_at"]
	
	@sec_patient_info_attributes = []
	@secpat.patient_info.attributes.each do |attribute|
		@sec_patient_info_attributes.push(attribute)
	end

	@sec_dental_insurance_attributes = []
	@secpat.dental_insurance.attributes.each do |attribute|
	@sec_dental_insurance_attributes.push(attribute)
	end

	@sec_dental_history_attributes = []
	@secpat.dental_history.attributes.each do |attribute|
		@sec_dental_history_attributes.push(attribute)
	end   
end

private

def current_user
	@current_user ||= User.find_by(id: session[:user_id]) 
end

end