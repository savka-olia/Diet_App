Rails.application.routes.draw do
  devise_for :users do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get "home/index"  
  root to: "home#index"
  resources :diets
end
