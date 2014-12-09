class CreateDentalHistories < ActiveRecord::Migration
  def change
    create_table :dental_histories do |t|

    	t.integer :patient_id

    	t.string :reason_for_visit 
			t.string :former_dentist 
			t.string :former_dentist_city_or_state 
			t.date :last_dental_visit 
			t.date :last_dental_xrays 

			t.boolean :bad_breath 
			t.boolean :bleeding_gums 
			t.boolean :blisters_on_lips_or_mouth 

			t.boolean :burning_sensation_on_tongue 
			t.boolean :chew_on_one_side_of_mouth 
			t.boolean :cigarette_pipe_or_cigar_smoking 
			t.boolean :clicking_or_popping_jaw 
			t.boolean :dry_mouth 
			t.boolean :fingernail_biting 
			t.boolean :food_collection_between_teeth 
			t.boolean :foreign_objects 
			t.boolean :grinding_teeth 
			t.boolean :gums_swollen_or_tender 
			t.boolean :jaw_pain_or_tiredness 
			t.boolean :lip_or_cheek_biting 
			t.boolean :loose_teeth_or_broken_fillings 

			t.boolean :mouth_breathing 
			t.boolean :mouth_pain_brushing 
			t.boolean :orthodontic_treatment 
			t.boolean :pain_around_ear 
			t.boolean :periodontal_treatment 
			t.boolean :sensitivity_to_cold 
			t.boolean :sensitivity_to_heat 
			t.boolean :sensitivity_to_sweets 
			t.boolean :sensitivity_when_biting 
			t.boolean :sores_or_growths_in_mouth 

    	t.string :flossing_frequency 
    	t.string :brushing_frequency 

      t.timestamps
    end
    add_index :dental_histories, :patient_id, unique: true
  end
end
