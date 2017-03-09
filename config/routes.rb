Rails.application.routes.draw do
	get '/top' => 'home#top'
	get '/articles/new' => 'articles#new'
	post '/articles' => 'articles#create'
	get '/articles' => 'articles#index'
	get '/articles/:id' => 'articles#show', as:'article'
	patch '/article/:id' => 'articles#update', as:'update_article'
	get '/article/:id/edit' => 'articles#edit', as:'edit_article'
	delete '/article/:id' => 'articles#destroy', as:'destroy_article'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
