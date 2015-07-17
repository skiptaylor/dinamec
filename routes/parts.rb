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

get '/machines/:id/order-part/?' do
  auth_customer
  @user = User.get(session[:customer])
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @part = Part.all
  @order = Order.new
  
  erb :'/parts/order-part'
end

post '/machines/:id/order-part/?' do
  auth_customer
  user = User.get(session[:customer])
  company = Company.get(params[:company_id])
  machine = Machine.get(params[:machine_id])
  order = Order.create(
    :po_number    => params[:po_number],
    :comment      => params[:comment],
    :machine_id   => params[:machineid]
  )
  
  erb :"/company/company"
end

get '/machines/:machine_id/parts/:id/delete-part/?' do
  auth_admin
  company = Company.get(params[:company_id])
  machine = Machine.get(params[:machine_id])
  part = Part.get(params[:id])
  part.destroy
  redirect "/machines/#{params[:machine_id]}/parts"
end

get '/parts/orders/?' do
  auth_admin
  @order = Order.all

  erb :'/parts/orders'
end

get '/machines/:machine_id/:id/?' do
  auth_customer
  @user = User.get(session[:customer])
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @order = Order.get(params[:id])
  @part = Part.all
  
  erb :'/parts/order'
end
