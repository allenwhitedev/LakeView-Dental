class PrivatePagesController < ApplicationController
	
	def lakeview_emp_area77 
  end

  def lakeview_emp_area88
  	@patients = Patient.all
  end

private

def current_user
	@current_user ||= User.find_by(id: sessions[:user_id]) 
end

end