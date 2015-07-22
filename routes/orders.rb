get '/machines/:machine_id/orders/order-part/?' do
  auth_customer
  @user = User.get(session[:customer])
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @part = Part.all
  @order = Order.new
  
  erb :'/orders/order-part'
end

post '/machines/:machine_id/orders/order-part/?' do
  auth_customer
  user = User.get(session[:customer])
  company = Company.get(params[:company_id])
  machine = Machine.get(params[:machine_id])
  order = Order.create(
    :po_number    => params[:po_number],
    :comment      => params[:comment],
    :machine_id   => params[:machineid],
    :status       => params[:status]
  )
  
  erb :"/company/company"
end

get '/machines/:machine_id/orders/:id/delete-order/?' do
  auth_admin
  company = Company.get(params[:company_id])
  machine = Machine.get(params[:machine_id])
  order = Order.get(params[:id])
  order.destroy
  redirect "/machines/#{params[:machine_id]}/orders"
end

get '/orders/orders/?' do
  auth_admin
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @order = Order.all
  erb :'/orders/orders'
end

get '/orders/:id/?' do
  auth_admin
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @order = Order.get(params[:id])
  erb :'/orders/order'
end

get '/machines/:machine_id/orders/:id/edit-order/?' do
  auth_admin
  user = User.get(session[:customer])
  company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @order = Order.get(params[:id])
  
  erb :'orders/edit-order'
end

post '/machines/:machine_id/orders/:id/edit-order/?' do
  auth_admin
  machine = Machine.get(params[:machine_id])
  order = Order.get(params[:id])
  order.update(
    :po_number    => params[:po_number],
    :comment      => params[:comment],
    :machine_id   => params[:machineid],
    :status       => params[:status]
  )
  redirect "/machines/#{params[:machine_id]}/orders/#{params[:order_id]}"
end

get '/machines/:machine_id/orders/:id/?' do
  auth_customer
  @user = User.get(session[:customer])
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @order = Order.get(params[:id])
  @part = Part.all
  erb :'orders/order'
end