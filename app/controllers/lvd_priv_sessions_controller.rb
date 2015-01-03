class LvdPrivSessionsController < ApplicationController

include PrivateHelper

def new
	
end

def create
	user = User.find_by(name: params[:lvd_priv_session][:name])
	if user && 
		user.authenticate(params[:lvd_priv_session][:password])
		loggin user
		flash[:success] = "Success"
		redirect_to lvd_employee_area77_path
	else
	flash.now[:danger] = "Invalid login information"
	render 'new'
	end
end

def waiting

end

def destroy
	
end

end