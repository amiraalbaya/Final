class SessionController < ApplicationController
	def new
	end

	def create
	  user = User.find_by(email: params[:session][:email].downcase)
	  if user && user.authenticate(params[:session][:password])
	  	login user
	  	redirect_to user
	  else
	  	flash.now[:danger] = "Invalid email/password"
	  	render 'new'
	  end
	end

	def destroy
		logout
		redirect_to root_url
	end
end
