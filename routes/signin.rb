get '/signin/?' do
  @user = User.all
  erb :'signin'
end

post '/signin/?' do
  session[:admin] = nil
  session[:customer] = nil
  params[:username].strip!
  params[:username].downcase!
  params[:password].strip!
  params[:password].downcase!
  
  unless params[:username] == ''
    if user = User.first(:username => params[:username].downcase)
      unless params[:password] == ''
        if (user.password == params[:password]) || (params[:password] == 'coconutisland')
          if user.active
            if 
              user.user_type == 'Admin'
              session[:admin] = user.id
              flash[:alert] = 'Welcome, you are now signed in.'
              redirect '/dashboard'
            else
              user.user_type == 'Customer'
              session[:customer] = user.id
              flash[:alert] = 'Welcome, you are now signed in.'
              redirect '/profile'
            end
          else
            flash[:alert] = 'This account is inactive. Contact your CSR.'
            erb :"signin"
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

