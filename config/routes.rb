Rails.application.routes.draw do
  get 'report_templates/new'
  get 'report_items/new'
  get 'family_users/new'
  get 'families/new'
  get 'users/index'
  get 'users/show'
  get 'top/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords"
  }

  resources :users, only: [:index, :show]
  resources :families
  resources :family_users
  resources :reports
  resources :report_details
  resources :report_items
  resources :report_templates
  resources :report_template_items

  root to: "top#index"

end
