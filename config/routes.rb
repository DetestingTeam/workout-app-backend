Rails.application.routes.draw do
  resources :users
  post 'user_token' => 'user_token#create'
  resources :workoutdetails
  resources :user_histories, defaults: {format: :json}
  resources :schedules, defaults: {format: :json}
  resources :workouts, defaults: {format: :json}
  resources :movements, defaults: {format: :json}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
