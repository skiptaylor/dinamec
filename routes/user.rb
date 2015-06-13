get '/user/users/?' do
  @user = User.all
  erb :'/user/users'
end

get '/user/new/?' do
  @user = User.new
  erb :'/user/edit'
end

post '/user/new/?' do
  user = User.create(
    :customer_id  => session[:customer_id],
    :first_name   => params[:first_name], 
    :last_name    => params[:last_name],
    :title        => params[:title],
    :phone1       => params[:phone1],
    :phone2       => params[:phone2],
    :email        => params[:email],
    :username     => params[:username],
    :password     => params[:password]
  )
  params[:active] ? user.update(:active => true)  : user.update(:active => false)
  redirect "/user/users"
end

get '/user/user/?' do
  @user = User.get(params[:id])
  erb :'/user/user'
end

get '/user/:id/edit/?' do
  @user = User.get(params[:id])
  erb :'/user/edit'
end

post '/user/:id/edit/?' do
  user = User.get(params[:id])
  user.update(
    :customer_id  => session[:customer_id],
    :first_name   => params[:first_name], 
    :last_name    => params[:last_name],
    :title        => params[:title],
    :phone1       => params[:phone1],
    :phone2       => params[:phone2],
    :email        => params[:email],
    :username     => params[:username],
    :password     => params[:password]
  )
  params[:active] ? user.update(:active => true)  : user.update(:active => false)
  redirect "/user/users"
end

get '/user/:id/delete/?' do
  user = User.get(params[:id])
  user.destroy
  redirect '/user/users'
end