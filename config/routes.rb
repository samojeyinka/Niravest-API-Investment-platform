Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users
  resources :packages

  get '/package-list' , to: 'plist#packages', as: 'package_list_all'
  get '/users/:user_id/packages/active', to: 'packages#active_packages', as: 'user_active_packages'
  post '/users/:user_id/packages', to: 'packages#add_package', as: 'add_user_package'
  delete '/users/:user_id/packages/:package_id', to: 'packages#remove_package', as: 'remove_user_package'
  get '/users/:user_id/packages', to: 'packages#user_packages', as: 'user_packages'
  get '/users/:user_id/packages/:package_id', to: 'packages#user_packages_package', as: 'user_packages_package'
  patch '/users/:user_id/packages/:package_id/edit', to: 'packages#user_packages_package_edit', as: 'user_packages_package_edit'
  patch '/packages/:id/activate', to: 'packages#activate_package', as: 'activate_package'

  #List of all packages wiithoiut authentiaction

  get '/plans', to: 'plans#packages', as: 'packages_lists_packages'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
