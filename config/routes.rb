Rails.application.routes.draw do


  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/show'

  get 'reviews/index'

  get 'messages/new'

  get 'messages/create'

  get 'messages/show'

  get 'messages/index'

  get 'foodtrucks/new'

  get 'foodtrucks/create'

  get 'foodtrucks/show'

  get 'foodtrucks/index'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/index'

  get '/vendors/profile' => 'vendors#profile', as: :profile
  get '/vendors/log_in' => 'vendors#log_in', as: :log_in
  resources :vendors, only: [:new, :create]

  # resources :sessions, only: [:create, :destroy]
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

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
