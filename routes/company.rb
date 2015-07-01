get '/companies/?' do
  auth_admin
  @user = User.get(session[:user])
  @company = Company.all
  erb :'/company/companies'
end

get '/new-company/?' do
  auth_admin
  @user = User.get(session[:user])
  @company = Company.new
  erb :'/company/edit-company'
end

post '/new-company/?' do
  auth_admin
  company = Company.create(
    :company    => params[:company],
    :address1   => params[:address1],
    :address2   => params[:address2],
    :city       => params[:city],
    :state      => params[:state],
    :zip        => params[:zip],
    :website    => params[:website],
    :phone      => params[:phone],
    :fax        => params[:fax],
    :industry   => params[:industry],
    :user_id    => params[:userid]
  )
  params[:active] ? company.update(:active => true)  : company.update(:active => false)
  redirect "/companies"
end

get '/company/?' do
  auth_admin
  @user = User.get(session[:user])
  @company = Company.get(params[:id])
  erb :'/company/company'
end

get '/:id/edit-company/?' do
  auth_admin
  @user = User.get(session[:user])
  @company = Company.get(params[:id])
  erb :'/company/edit-company'
end

post '/:id/edit-company/?' do
  auth_admin
  company = Company.get(params[:id])
  company.update(
    :company    => params[:company], 
    :address1   => params[:address1],
    :address2   => params[:address2],
    :city       => params[:city],
    :state      => params[:state],
    :zip        => params[:zip],
    :website    => params[:website],
    :phone      => params[:phone],
    :fax        => params[:fax],
    :industry   => params[:industry],
    :user_id    => params[:userid]
  )
  params[:active] ? company.update(:active => true)  : company.update(:active => false)
  redirect "/companies"
end

get '/:id/delete-company/?' do
  auth_admin
  user = User.get(session[:user])
  company = Company.get(params[:id])
  company.destroy
  redirect '/companies'
end