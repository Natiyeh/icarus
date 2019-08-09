Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  get 'pokemon', to: 'pokemon#index'

  post 'pokemon', to: 'pokemon#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home', as: :home
end
