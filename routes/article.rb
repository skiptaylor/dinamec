get '/articles/articles/?' do
	@article = Article.all
	erb :'/articles/articles'
end

get '/articles/new-article/?' do
  @article = Article.new
  erb :'/articles/edit_article'
end

post '/articles/new-article/?' do
  article = Article.create(
    :date     => params[:date],
    :title    => params[:title],
    :author   => params[:author],
    :content  => params[:content]
  )
  params[:active] ? article.update(active: true) : article.update(active: false)
  
  redirect '/articles/articles'
end

get '/articles/:id/article/?' do
  @article = Article.get(params[:id])
  erb :'/articles/articles'
end

get '/articles/:id/edit-article/?' do
  @article = Article.get(params[:id])
  erb :'/articles/edit_article'
end

post '/articles/:id/edit-article/?' do
  article = Article.get(params[:id])
  article.update(
    :date     => params[:date],
    :title    => params[:title],
    :author   => params[:author],
    :content  => params[:content]
  )
  params[:active] ? article.update(active: true) : article.update(active: false)

  redirect '/articles/articles'
end

get '/articles/:id/delete/?' do
  article = Article.get(params[:id])
  article.destroy
  redirect '/articles/articles'
end

