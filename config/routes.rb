Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'mon_profil', to: 'profiles#show', as: :mon_profil
  resources :courses, only: [:index, :show]
  resources :participations, only: [] do
    collection do
      get :past_participations
      get :upcoming_participations
    end
  end
  resources :invitations, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
