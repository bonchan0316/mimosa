Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'families/new'
  get 'top/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords"
  }

  resources :users, :only =>  [:index, :show]
  resources :families

  root to: "top#index"

end
