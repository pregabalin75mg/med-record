Rails.application.routes.draw do
  devise_for :pharmacists
  get 'patients/index'
  root "patients#index"
end
