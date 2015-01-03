class User < ActiveRecord::Base

validates :name, uniqueness: true, length: { is: 4 }
has_secure_password


def User.digest(string)
	cost = ActiveModel::SecurePassword.max_cost ? BCrypt::Engine::MAX_COST :
	BCrypt::Engine.cost
	  Bcrypt::Password.create(string, cost: cost)
end

end
