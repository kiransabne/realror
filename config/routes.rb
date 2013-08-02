Realror::Application.routes.draw do
  # devise_for :admins
  # devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'landing#index'
  devise_for :users, :path => "/", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  devise_for :admins, :controllers => { :sessions => "admins/sessions", :registrations => "admins/registrations", :passwords => "admins/passwords" }
  #match 'admin' => 'admins/sessions#new'
  match '/admin', :to => "/admins/sessions#new", via: :all

  #devise_for :admins

  # devise_for :admins, :controllers => { :sessions => "admins/sessio ns" }

  # devise_for :Admins do
  #     get "admin/login", :to => "devise/sessions#new" # Add a custom sign in route for user sign in
  #     get "admin/logout", :to => "devise/sessions#destroy" # Add a custom sing out route for user sign out
  #     get "admin/register", :to => "devise/registrations#new" # Add a Custom Route for Registrations
  #  end

   #devise_for :users, :path => "auth", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }

   #devise_for :admins, :controllers => { :sessions => "admins/sessions" }

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
