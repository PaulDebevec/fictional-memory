Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v0 do
      post '/login', to: 'sessions#create'
      resources :players, only: [:index]
    end
  end
end
