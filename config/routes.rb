Rails.application.routes.draw do
    get "/welcome/home",  to: "welcome#home"
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end