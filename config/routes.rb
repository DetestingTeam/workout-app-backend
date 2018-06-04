Rails.application.routes.draw do
  devise_for :users, defaults: {format: :json}
              # path: '',
              #  path_names: {
              #    sign_in: 'login',
              #    sign_out: 'logout',
              #    registration: 'signup'
              #  }
  resources :user_histories, defaults: {format: :json}
  resources :schedules, defaults: {format: :json}
  resources :workouts, defaults: {format: :json}
  resources :movements, defaults: {format: :json}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
