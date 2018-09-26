Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post :upload, to: 'application#upload'
  resource :devices
  resource :sessions, only: :index do
    member do
      post :upload_image
    end
  end
end
