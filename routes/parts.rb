get '/machines/parts?' do
  @machine = Machine.all
  @part = Part.all
  erb :'/machines/parts'
end

get '/machines/new-part/?' do
  @machine = Machine.all
  @part = Part.new
  erb :'/machines/edit-part'
end

post '/machines/new-part/?' do
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
  @machine = MAchine.all
  @part = Part.get(params[:id])
  erb :'/machines/part'
end

get '/machines/:id/edit-part/?' do
  @machine = Machine.all
  @part = Part.get(params[:id])
  erb :'/machines/edit-part'
end

post '/machines/:id/edit-part/?' do
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
  machine = Machine.all
  part = Part.get(params[:id])
  part.destroy
  redirect '/machines/parts'
end
