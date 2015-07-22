get '/machines/:machine_id/orders/:order_id/items/new/?' do
  auth_admin
  @user = User.get(session[:customer])
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @order = Order.get(params[:order_id])
  @item = Item.new
  
  erb :'items/edit-itme'
end

post '/machines/:machine_id/orders/:order_id/items/new/?' do
  auth_admin
  machine = Machine.get(params[:machine_id])
  order = Order.get(params[:order_id])
  item = Item.create(
    :item       => params[:item],
    :quantity   => params[:quantity],
    :order_id   => params[:order_id]
  )
  
  redirect "/machines/#{params[:machine_id]}/orders/#{params[:order_id]}"
end

get '/machines/:machine_id/orders/:order_id/items/edit-item/?' do
  auth_admin
  @user = User.get(session[:customer])
  @company = Company.get(params[:company_id])
  @machine = Machine.get(params[:machine_id])
  @order = Order.get(params[:order_id])
  @item = Item.get(params[:id])
  
  erb :'items/edit-itme'
end

post '/machines/:machine_id/orders/:order_id/items/edit-item/?' do
  auth_admin
  machine = Machine.get(params[:machine_id])
  order = Order.get(params[:order_id])
  item = Item.get(params[:id])
  item.update(
    :item       => params[:item],
    :quantity   => params[:quantity],
    :order_id   => params[:order_id]
  )
  redirect "/machines/#{params[:machine_id]}/orders/#{params[:order_id]}"
end