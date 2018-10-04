Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :devices
      resources :sessions, only: :index do
        member do
          post :upload_image
        end
      end
    end
  end

  resources :devices
  resources :sessions
  resources :image_stores
end
