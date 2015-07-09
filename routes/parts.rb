get '/machines/:id/parts/?' do
  auth_admin
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @part = Part.all
  erb :'/parts/parts'
end

get '/machines/:id/new-part/?' do
  auth_admin
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @part = Part.new
  erb :'/parts/edit-part'
end

post '/machines/:id/new-part/?' do
  auth_admin
  company = Company.get(params[:company_id])
  machine = Machine.get(params[:machine_id])
  part = Part.create(
    :part           => params[:part],
    :quantity       => params[:quantity],
    :part_number    => params[:part_number],
    :description    => params[:description],
    :machine_id     => params[:machineid]
  )
  redirect "/machines/#{params[:id]}/parts"
end

get '/machines/:machine_id/parts/:id/edit-part/?' do
  auth_admin
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @part = Part.get(params[:id])
  erb :'/parts/edit-part'
end

post '/machines/:machine_id/parts/:id/edit-part/?' do
  auth_admin
  machine = Machine.get(params[:machine_id])
  part = Part.get(params[:id])
  part.update(
    :part           => params[:part],
    :quantity       => params[:quantity],
    :part_number    => params[:part_number],
    :description    => params[:description],
    :machine_id     => params[:machineid]
  )
  redirect "/machines/#{params[:machine_id]}/parts"
end

get '/machines/:machine_id/parts/:id/delete-part/?' do
  auth_admin
  company = Company.get(params[:company_id])
  machine = Machine.get(params[:machine_id])
  part = Part.get(params[:id])
  part.destroy
  redirect "/machines/#{params[:machine_id]}/parts"
end
