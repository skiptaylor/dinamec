get '/customer/customers/?' do
  auth_admin
  @user = User.get(session[:user])
  @customer = Customer.all
  erb :'/customer/customers'
end

get '/customer/new/?' do
  auth_admin
  @user = User.get(session[:user])
  @customer = Customer.new
  erb :'/customer/edit'
end

post '/customer/new/?' do
  auth_admin
  customer = Customer.create(
    :user_id    => session[:user_id],
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
  params[:active] ? customer.update(:active => true)  : customer.update(:active => false)
  redirect "/customer/customers"
end

get '/customer/customer/?' do
  auth_company
  @user = User.get(session[:user])
  @customer = Customer.get(params[:id])
  erb :'/customer/customer'
end

get '/customer/:id/edit/?' do
  auth_admin
  @user = User.get(session[:user])
  @customer = Customer.get(params[:id])
  erb :'/customer/edit'
end

post '/customer/:id/edit/?' do
  auth_admin
  customer = Customer.get(params[:id])
  customer.update(
    :user_id    => session[:user_id],
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
  params[:active] ? customer.update(:active => true)  : customer.update(:active => false)
  redirect "/customer/customers"
end

get '/customer/:id/delete/?' do
  auth_admin
  user = User.get(session[:user])
  customer = Customer.get(params[:id])
  customer.destroy
  redirect '/customer/customers'
end