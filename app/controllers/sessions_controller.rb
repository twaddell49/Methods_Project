class SessionsController < ApplicationController

	def new
	end

	def create
		critic = Critic.find_by_email(params[:session][:email].downcase)
		if critic && critic.authenticate(params[:session][:password])
			sign_in(critic)
			redirect_to critic
		else
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
