Rails.application.routes.draw do
  get 'users/show'
  get 'welcome/index'
  resources :schedules do
    resources :exercises
  end
  devise_for :users
  root 'welcome#index'
  resources :users do
    get :flop
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
