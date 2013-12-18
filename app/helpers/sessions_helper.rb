module SessionsHelper
	def sign_in(critic)
		remember_token = Critic.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		critic.update_attributes(:remember_token => Critic.encrypt(remember_token))
		self.current_critic = critic
	end

	def signed_in?
		!current_critic.nil?
	end

	def current_critic=(critic)
		@current_critic = critic
	end

	def current_critic
		remember_token = Critic.encrypt(cookies[:remember_token])
		@current_critic ||= Critic.find_by_remember_token(remember_token)
	end

	def sign_out
		self.current_critic = nil
		cookies.delete(:remember_token)
	end
end
