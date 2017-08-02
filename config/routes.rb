Rails.application.routes.draw do
  resources :articles, only: [:new, :create, :index, :show, :edit, :update, :delete, :destroy]
end
