Rails.application.routes.draw do
  devise_for :users
  get 'patients/index'
  root "patients#index"
end
