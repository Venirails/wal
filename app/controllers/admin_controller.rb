class AdminController < ApplicationController
  def login
  	if request.post?
	  	if params[:name]=="admin" && params[:password]=="nimda"
	       session[:admin] = "admin"
	       flash[:notice]="Welcome Admin"
	       redirect_to :books
	       
	  	else 
	       flash[:notice] = "Invalid credentials.Please try again"
	       render :action=>:login
	  	end
	  end

	end

	def logout
     session[:admin] = nil
     flash[:notice] = "You are logged out"
     redirect_to :action=>:login
	end
end
