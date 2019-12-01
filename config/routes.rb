Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/top' => 'tops#top'
  
  get 'books/new'
  
  post 'books' => 'books#create'
  
  get '/books' => 'books#index'
  

end
