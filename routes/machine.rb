get '/machines/machines?' do
  @company = Company.all
  @machine = Machine.all
  erb :'/machines/machines'
end

get '/machines/new-machine/?' do
  @company = Company.all
  @machine = Machine.new
  erb :'/machines/edit-machine'
end

post '/machines/new-machine/?' do
  @machine = Machine.create(
    :name           => params[:name],
    :company_id     => params[:companyid]
  )
  redirect "/machines/machines"
end

get '/machines/machine/?' do
  @company = Company.all
  @machine = Machine.get(params[:id])
  erb :'/machines/machine'
end

get '/machines/:id/edit-machine/?' do
  @company = Company.all
  @machine = Machine.get(params[:id])
  erb :'/machines/edit-machine'
end

post '/machines/:id/edit-machine/?' do
  machine = Machine.get(params[:id])
  machine.update(
    :name           => params[:name],
    :company_id     => params[:companyid]
  )
  redirect '/machines/machines'
end

get '/machines/:id/delete-machine/?' do
  company = Company.all
  machine = Machine.get(params[:id])
  machine.destroy
  redirect '/machines/machines'
end
