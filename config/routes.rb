Rails.application.routes.draw do
  root 'home#index'
  resources :home, only: %i[index new show create]
end
