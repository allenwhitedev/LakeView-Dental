class PatientsController < ApplicationController


def new
	@patient = Patient.new
end

def create
	@patient = Patient.new(patient_params)
	if @patient.save
		respond_to do |format|
			format.html	{ @current_patient = Patient.find(@patient.id) }
			format.js	{ @current_patient = Patient.find(@patient.id) }
		end
	else
		render 'patients/new'
	end
end

def show
end

def patient_info
	@current_patient = Patient.find(params[:current_patient_id])
	if @current_patient.create_patient_info!(patient_info_params) 
		respond_to do |format|
			format.html { @current_patient }
			format.js { @current_patient }
	end
	else
		render 'patients/new'
	end
end

def dental_insurance
	@current_patient = Patient.find(params[:current_patient_id])
	if @current_patient.create_dental_insurance!(dental_insurance_params)
		respond_to do |format|
			format.html { @current_patient }
			format.js { @current_patient }
		end
	else
		render 'patients/new'
	end
end

def dental_history
	@current_patient = Patient.find(params[:current_patient_id])
	if @current_patient.create_dental_history!(dental_history_params)
		respond_to do |f|
			f.html  
			f.js 
		end
	else
		render 'patients/new'
	end
end 



private

	#def current_patient(patient_id)
	#	@current_patient = Patient.find(patient_id)
	#end

	def patient_params
		params.require(:patient).permit(:first_name, :middle_initial, :last_name)
	end

	def patient_info_params
		attributes = ["address", "email", "city", "state", "zipcode", "sex", "birthdate", "relationship_status", "employer_or_school", "occupation", "employer_or_school_address", "employer_or_school_phone", "spouse_name", "spouse_birthdate", "spouse_employer", "referrer"] 
		params.require(:patient_info).permit(attributes)
	end

	def dental_insurance_params
		attributes = ["account_owner", "account_owner_to_patient_relationship", "account_owner_insurance_company", "account_owner_group_number", "account_owner_additional_insurance", "subscriber_name", "subscriber_birthdate", "subsriber_relationship_to_patient", "subscriber_insurance_company", "subscriber_group_number", "name_of_insurance_company", "doctor_name", "patient_signature", "printed_signature", "signature_date", "signer_relationship_to_patient"] 
		params.require(:dental_insurance).permit(attributes)
	end

	def dental_history_params
		attributes = ["reason_for_visit", "former_dentist", "former_dentist_city_or_state", "last_dental_visit", "last_dental_xrays", "bad_breath", "bleeding_gums", "blisters_on_lips_or_mouth", "burning_sensation_on_tongue", "chew_on_one_side_of_mouth", "cigarette_pipe_or_cigar_smoking", "clicking_or_popping_jaw", "dry_mouth", "fingernail_biting", "food_collection_between_teeth", "foreign_objects", "grinding_teeth", "gums_swollen_or_tender", "jaw_pain_or_tiredness", "lip_or_cheek_biting", "loose_teeth_or_broken_fillings", "mouth_breathing", "mouth_pain_brushing", "orthodontic_treatment", "pain_around_ear", "periodontal_treatment", "sensitivity_to_cold", "sensitivity_to_heat", "sensitivity_to_sweets", "sensitivity_when_biting", "sores_or_growths_in_mouth", "flossing_frequency", "brushing_frequency"]
		params.require(:dental_history).permit(attributes)
	end

end