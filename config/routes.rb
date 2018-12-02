Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'

  namespace :api, format: 'json' do
    resources :bijo_images, only: [:index]
  end
end
