class SessionsController < ApplicationController
  def new
  end
  def create
  	user=User.find_by_name(params[:name])
	if user && user.password==params[:password]
		if user.role=="Organisation"
			session[:user_id]=user.id
			redirect_to organization_index_url
		else
			if user.role=="Candidate"
				session[:user_id]=user.id
				redirect_to candidates_index_url
			end
		end
	else
		redirect_to login_url,alert: "Invalid userID/password combination"
	end
  end

  def destroy
  	session[:user_id]=nil
	redirect_to login_url, notice: "Logged Out"
  end
end