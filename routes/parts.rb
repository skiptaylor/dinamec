get '/machines/parts?' do
  auth_admin
  @machine = Machine.all
  @part = Part.all
  erb :'/machines/parts'
end

get '/machines/new-part/?' do
  auth_admin
  @machine = Machine.all
  @part = Part.new
  erb :'/machines/edit-part'
end

post '/machines/new-part/?' do
  auth_admin
  @part = Part.create(
    :part           => params[:part],
    :quantity       => params[:quantity],
    :part_number    => params[:part_number],
    :description    => params[:description],
    :machine_id     => params[:machineid]
  )
  redirect "/machines/parts"
end

get '/machines/part/?' do
  auth_admin
  @machine = MAchine.all
  @part = Part.get(params[:id])
  erb :'/machines/part'
end

get '/machines/:id/edit-part/?' do
  auth_admin
  @machine = Machine.all
  @part = Part.get(params[:id])
  erb :'/machines/edit-part'
end

post '/machines/:id/edit-part/?' do
  auth_admin
  part = Part.get(params[:id])
  part.update(
    :part           => params[:part],
    :quantity       => params[:quantity],
    :part_number    => params[:part_number],
    :description    => params[:description],
    :machine_id     => params[:machineid]
  )
  redirect '/machines/parts'
end

get '/machines/:id/delete-part/?' do
  auth_admin
  machine = Machine.all
  part = Part.get(params[:id])
  part.destroy
  redirect '/machines/parts'
end
