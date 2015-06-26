get '/?'  do
  erb :"/index"
end

get '/index/?' do
  erb :"/index"
end

get '/industries/?' do
  erb :"/industries"
end

get '/product/?' do
  erb :"/product"
end

get '/process/?' do
  erb :"/process"
end

get '/service/?' do
  erb :"/service"
end

get '/customers/?' do
  erb :"/customers"
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
  
  redirect '/contacts/thank-you'
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
  
  redirect '/contacts/thank-you'
end

get "/signin/?" do
  erb :"/signin"
end

get "/comingsoon/?" do
  @user = User.all
  erb :"/admin/comingsoon"
end

get "/dashboard/?" do
  @user = User.all
  @contact = Contact.all
  erb :"/admin/dashboard"
end

