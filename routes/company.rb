get '/companies/?' do
  @user = User.get(session[:user])
  @company = Company.all
  erb :'/company/companies'
end

get '/new-company/?' do
  @user = User.get(session[:user])
  @company = Company.new
  erb :'/company/edit-company'
end

post '/new-company/?' do
  company = Company.create(
    :machine_id => params[:machineid],
    :company    => params[:company],
    :address1   => params[:address1],
    :address2   => params[:address2],
    :city       => params[:city],
    :state      => params[:state],
    :zip        => params[:zip],
    :website    => params[:website],
    :phone      => params[:phone],
    :fax        => params[:fax],
    :industry   => params[:industry]
  )
  params[:active] ? company.update(:active => true)  : company.update(:active => false)
  redirect "/companies"
end

get '/company/?' do
  @user = User.get(session[:user])
  @company = Company.get(params[:id])
  erb :'/company/company'
end

get '/:id/edit-company/?' do
  @user = User.get(session[:user])
  @company = Company.get(params[:id])
  erb :'/company/edit-company'
end

post '/:id/edit-company/?' do
  company = Company.get(params[:id])
  company.update(
    :machine_id => params[:machineid],
    :company    => params[:company], 
    :address1   => params[:address1],
    :address2   => params[:address2],
    :city       => params[:city],
    :state      => params[:state],
    :zip        => params[:zip],
    :website    => params[:website],
    :phone      => params[:phone],
    :fax        => params[:fax],
    :industry   => params[:industry]
  )
  params[:active] ? company.update(:active => true)  : company.update(:active => false)
  redirect "/companies"
end

get '/:id/delete-company/?' do
  user = User.get(session[:user])
  company = Company.get(params[:id])
  company.destroy
  redirect '/companies'
end