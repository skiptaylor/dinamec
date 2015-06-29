get '/machines/machines?' do
  auth_admin
  @company = Company.all
  @machine = Machine.all
  erb :'/machines/machines'
end

get '/machines/new-machine/?' do
  auth_admin
  @company = Company.all
  @machine = Machine.new
  erb :'/machines/edit-machine'
end

post '/machines/new-machine/?' do
  auth_admin
  @machine = Machine.create(
    :name           => params[:name],
    :company_id     => params[:companyid]
  )
  redirect "/machines/machines"
end

get '/machines/machine/?' do
  auth_admin
  @company = Company.all
  @machine = Machine.get(params[:id])
  erb :'/machines/machine'
end

get '/machines/:id/edit-machine/?' do
  auth_admin
  @company = Company.all
  @machine = Machine.get(params[:id])
  erb :'/machines/edit-machine'
end

post '/machines/:id/edit-machine/?' do
  auth_admin
  machine = Machine.get(params[:id])
  machine.update(
    :name           => params[:name],
    :company_id     => params[:companyid]
  )
  redirect '/machines/machines'
end

get '/machines/:id/delete-machine/?' do
  auth_admin
  company = Company.all
  machine = Machine.get(params[:id])
  machine.destroy
  redirect '/machines/machines'
end
