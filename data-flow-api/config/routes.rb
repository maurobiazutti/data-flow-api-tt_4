Rails.application.routes.draw do
  # root "posts#index"
  resources :imports, only: [:create], defaults: { format: :json }

end
