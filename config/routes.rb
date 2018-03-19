Rails.application.routes.draw do
  

  root 'static_pages#home'

  get 'my_books', to: 'books#my_books'

  devise_for :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
