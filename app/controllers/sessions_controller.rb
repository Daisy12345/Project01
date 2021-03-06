class SessionsController < ApplicationController
	def new	
	end

	#login
	def create
		user = User.find_by_email(params[:email])		
		if user && user.authenticate(params[:password])			
			session[:user_id] = user.id
			redirect_to '/home'
		else
			redirect_to login_path
		end
	end

	#logout
	def destroy
		session[:user_id] = nil
		redirect_to '/login'	
	end
end
