class DentalHistory < ActiveRecord::Base
	belongs_to :patient
	validates :patient_id, uniqueness: true

	boolean_attributes = ["bad_breath", "bleeding_gums", "blisters_on_lips_or_mouth", "burning_sensation_on_tongue", "chew_on_one_side_of_mouth", "cigarette_pipe_or_cigar_smoking", "clicking_or_popping_jaw", "dry_mouth", "fingernail_biting", "food_collection_between_teeth", "foreign_objects", "grinding_teeth", "gums_swollen_or_tender", "jaw_pain_or_tiredness", "lip_or_cheek_biting", "loose_teeth_or_broken_fillings", "mouth_breathing", "mouth_pain_brushing", "orthodontic_treatment", "pain_around_ear", "periodontal_treatment", "sensitivity_to_cold", "sensitivity_to_heat", "sensitivity_to_sweets", "sensitivity_when_biting", "sores_or_growths_in_mouth"]

	boolean_attributes.each do |boolean_attribute|
		validates_inclusion_of boolean_attribute, in: [true, false]
	end

	attributes = ["reason_for_visit", "former_dentist", "former_dentist_city_or_state", "last_dental_visit", "last_dental_xrays", "flossing_frequency", "brushing_frequency"]

	attributes.each do |attribute|
		validates_presence_of attribute
	end

end
