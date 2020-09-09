Rails.application.routes.draw do
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'
}

  root "products#index"
  resources :users, only: [:edit, :update]

  resources :products do
    resources :comments
  end
end
