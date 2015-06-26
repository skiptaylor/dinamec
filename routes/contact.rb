get '/contacts/contacts/?' do
	@contact = Contact.all
	erb :'/contacts/contacts'
end

get '/contacts/new_contact/?' do
  @contact = Contact.new
  erb :'/contacts/edit_contact'
end

post '/contacts/new_contact/?' do
  contact = Contact.create(
    :name         => params[:name],
    :company      => params[:company],
    :email        => params[:email],
    :phone        => params[:phone],
    :comment      => params[:comment],
    :description  => params[:description]
  )
  params[:archive] ? contact.update(archive: true) : contact.update(archive: false)
  
  redirect '/dashboard'
end

get '/contacts/:id/contact/?' do
  @contact = Contact.get(params[:id])
  erb :'/contacts/contact'
end

get '/contacts/:id/edit_contact/?' do
  @contact = Contact.get(params[:id])
  erb :'/contacts/edit_contact'
end

post '/contacts/:id/edit_contact/?' do
  contact = Contact.get(params[:id])
  contact.update(
    :name         => params[:name],
    :company      => params[:company],
    :email        => params[:email],
    :phone        => params[:phone],
    :comment      => params[:comment],
    :description  => params[:description]
  )
  params[:archive] ? contact.update(archive: true) : contact.update(archive: false)

  redirect '/dashboard'
end

get '/contacts/:id/delete/?' do
  contact = Contact.get(params[:id])
  contact.destroy
  redirect '/dashboard'
end