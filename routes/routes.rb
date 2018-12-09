get '/?'  do
  erb :"/index"
end

get '/index/?' do
  erb :"/index"
end

get '/thermal-cleaning/industries/?' do
  erb :"/thermal-cleaning/industries"
end

get '/thermal-cleaning/product/?' do
  erb :"/thermal-cleaning/product"
end

get '/thermal-cleaning/process/?' do
  erb :"/thermal-cleaning/process"
end

get '/service/?' do
  erb :"/service"
end

get '/customers/?' do
  erb :"/customers"
end

get '/process-ani/?' do
  erb :"/process-ani"
end

get '/thermal-cleaning/process-animation/?' do
  erb :"/thermal-cleaning/process-animation"
end


get '/news/?' do
	@article = Article.all(:order => :date.desc)
	erb :'/news'
end

get '/news/articles/?' do
  @article = Article.last
  erb :'/news'
end

get '/news/:id?' do
  @article = Article.get(params[:id])
  erb :'/news'
end

get "/contact/?" do
  @contact = Contact.new
  erb :"/contact"
end

post '/contact/?' do
  contact = Contact.create(
    :name         => params[:name],
    :company      => params[:company],
    :email        => params[:email],
    :phone        => params[:phone],
    :comment      => params[:comment]
  )
  params[:archive] ? contact.update(archive: true) : contact.update(archive: false)
  
  if params["g-recaptcha-response"] == ""
    flash[:alert] = 'Are you a Robot?. Please complete Captcha.'
    redirect '/cleaning'
  else
    Email.respond(contact.name, contact.company, contact.email, contact.phone, contact.comment)
    redirect '/contacts/thank-you'
  end 
  
  
  erb :"/contacts/thank-you"
  
end

get "/contacts/thank-you/?" do
  erb :"/contacts/thank-you"
end

get "/cleaning/?" do
  @contact = Contact.new
  erb :"/cleaning"
end

post '/cleaning/?' do
  contact = Contact.create(
    :name         => params[:name],
    :company      => params[:company],
    :email        => params[:email],
    :phone        => params[:phone],
    :description  => params[:description]
  )
  params[:archive] ? contact.update(archive: true) : contact.update(archive: false)
  
  if params[:email_name] == ""
    Email.cleaning(contact.name, contact.company, contact.email, contact.phone, contact.description)
    redirect '/contacts/thank-you'
  end
  
end

get "/signin/?" do
  erb :"/signin"
end

get "/dashboard/?" do
  auth_admin
  @user = User.all
  @contact = Contact.all
  erb :"/admin/dashboard"
end

