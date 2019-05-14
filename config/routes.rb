Rails.application.routes.draw do
  get '/', to: 'homes#index'
  resources :homes
end
