Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :index, :show]
end
