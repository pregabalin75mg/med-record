Rails.application.routes.draw do
  get 'patients/index'
  root "patients#index"
end
