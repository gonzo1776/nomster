  Rails.application.routes.draw do
# default_url_options Rails.application.config.action_mailer.default_url_options

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  resources :places do
    resources :comments, only: :create
    # /places/:place_id/photos
    resources :photos, only: :create
    end
    resources :users, only: :show
end


