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
  erb :"/news"
end

get "/contact/?" do
  erb :"/contact"
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
  erb :"/admin/dashboard"
end