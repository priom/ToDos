Rails.application.routes.draw do

  # devise_for :users
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'signup'}

  resources :items do
    member do
      patch :complete
    end
  end
  
  root "items#index"
end
