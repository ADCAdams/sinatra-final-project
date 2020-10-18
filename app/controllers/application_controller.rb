require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    enable :sessions
    set :views, 'app/views'
    set :session_secret, "secret"
  end

  

  get "/" do
    erb :welcome
  end

  get "/signup" do
		erb :signup
	end

	post "/signup" do
		#your code here!
    user = User.new(:username => params[:username], :password => params[:password])

		if user.save
			redirect "/login"
		  else

			redirect "/failure"
		  end
	end

	get "/login" do
		erb :login
	end

	post "/login" do
		user = User.find_by(:username => params[:username])
		if user
			session[:user_id] = user.id
			redirect "/users/#{user.id}"
		else
			redirect "/failure"
		end
	end

	get "/success" do
		if logged_in?
			erb :success
		else
			redirect "/login"
		end
	end

	get "/failure" do
		erb :failure
	end

	get "/logout" do
		session.clear
		redirect "/"
	end

	helpers do
		def logged_in?
			!!session[:user_id]
		end

		def current_user
			User.find(session[:user_id])
		end
	end

end
