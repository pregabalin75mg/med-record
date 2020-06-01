Rails.application.routes.draw do
  devise_for :users
  root "patients#index"
end
