get '/parts/parts?' do
  auth_admin
  @machine = Machine.get(params[:machine_id])
  @part = Part.all
  erb :'/parts/parts'
end

get '/parts/new-part/?' do
  auth_admin
  @machine = Machine.get(params[:machine_id])
  @part = Part.new
  erb :'/parts/edit-part'
end

post '/parts/new-part/?' do
  auth_admin
  @part = Part.create(
    :part           => params[:part],
    :quantity       => params[:quantity],
    :part_number    => params[:part_number],
    :description    => params[:description],
    :machine_id     => params[:machineid]
  )
  redirect "/parts/parts"
end

# get '/machines/:machine_id/parts/part/?' do
#   auth_admin
#   @machine = Machine.get(params[:machine_id])
#   @part = Part.get(params[:id])
#   erb :'/parts/part'
# end

get '/parts/:id/edit-part/?' do
  auth_admin
  @machine = Machine.get(params[:machine_id])
  @part = Part.get(params[:id])
  erb :'/parts/edit-part'
end

post '/parts/:id/edit-part/?' do
  auth_admin
  part = Part.get(params[:id])
  part.update(
    :part           => params[:part],
    :quantity       => params[:quantity],
    :part_number    => params[:part_number],
    :description    => params[:description],
    :machine_id     => params[:machineid]
  )
  redirect "/parts/parts"
end

get '/parts/:id/delete-part/?' do
  auth_admin
  machine = Machine.get(params[:machine_id])
  part = Part.get(params[:id])
  part.destroy
  redirect "/machines/#{params[:machine_id]}/parts/parts"
end
