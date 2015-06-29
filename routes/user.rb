get '/users/?' do
  auth_admin
  @user = User.all
  erb :'/user/users'
end

get '/new-user/?' do
  auth_admin
  @user = User.new
  erb :'/user/edit'
end

post '/new-user/?' do
  auth_admin
  user = User.create(
    :company_id   => params[:companyid],
    :first_name   => params[:first_name], 
    :last_name    => params[:last_name],
    :title        => params[:title],
    :phone1       => params[:phone1],
    :phone2       => params[:phone2],
    :email        => params[:email],
    :user_type    => params[:user_type],
    :username     => params[:username],
    :password     => params[:password]
  )
  params[:active] ?     user.update(:active => true)    : user.update(:active => false)
  
  redirect "/users"
end

get '/user/?' do
  auth_admin
  @user = User.get(params[:id])
  erb :'/user/user'
end

get '/:id/edit-user/?' do
  auth_admin
  @user = User.get(params[:id])
  erb :'/user/edit'
end

post '/:id/edit-user/?' do
  auth_admin
  user = User.get(params[:id])
  user.update(
    :company_id   => params[:companyid],
    :first_name   => params[:first_name], 
    :last_name    => params[:last_name],
    :title        => params[:title],
    :phone1       => params[:phone1],
    :phone2       => params[:phone2],
    :email        => params[:email],
    :user_type    => params[:user_type],
    :username     => params[:username],
    :password     => params[:password]
  )
  params[:active] ?     user.update(:active => true)    : user.update(:active => false)
  
  redirect "/users"
end

get '/:id/delete-user/?' do
  auth_admin
  user = User.get(params[:id])
  user.destroy
  redirect '/users'
end