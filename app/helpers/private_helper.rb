module PrivateHelper

def loggin(user)
	session[:user_id] = user.id
end

end