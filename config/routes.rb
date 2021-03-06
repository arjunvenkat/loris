Rails.application.routes.draw do
  resources :enrollments
  devise_for :users
  resources :users, only: [:show]
  resources :uploads
  resources :topics
  resources :concepts
  resources :exercises
  resources :roadmaps
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'

  post '/applications' => 'applications#create', as: 'applications'
  post '/course_ideas' => 'course_ideas#create', as: 'course_ideas'
  post '/contacts' => 'contacts#create', as: 'contacts'

  get '/courses' => 'pages#courses'
  get '/courses/html_1' => 'pages#html_1'
  get '/courses/rails_1' => 'pages#rails_1'
  get '/courses/game_dev_1' => 'pages#game_dev_1'
  get '/after_school' => 'pages#after_school', as: 'after_school'
  get '/our_program' => 'pages#our_program', as: 'our_program'
  get '/pricing' => 'pages#pricing'
  get '/about' => 'pages#about'
  get '/apply' => 'pages#apply'
  get '/privacy_policy' => 'pages#privacy_policy'

  resources :courses do
    resources :roadmaps
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
