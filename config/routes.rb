Rails.application.routes.draw do


  get '/signup' =>'users#new'
  root 'static_pages#home'
  post '/signup',  to: 'users#create'

  get '/help' =>'static_pages#help'
  get '/about' => 'static_pages#about'
  get  '/contact' => 'static_pages#contact'
   resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
