class PatientsController < ApplicationController




def new
	@patient = Patient.new
end

def create
	@patient = Patient.new(patient_params)
	if @patient.save
		respond_to do |format|
			format.html	{ redirect_to root_url }
			format.js	
		end
	else
		render 'patients/new'
	end
end

def show
end



private

	def patient_params
		params.require(:patient).permit(:first_name, :middle_initial, :last_name)
	end

end