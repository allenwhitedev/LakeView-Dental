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
  end

private

def current_user
	@current_user ||= User.find_by(id: session[:user_id]) 
end

end