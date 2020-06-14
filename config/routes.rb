Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  root "patients#index"
  resources :patients do
    resources :medication_histories
  end
end
