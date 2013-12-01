RailsEcommProject::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  get "home/index"

  # Index of the site
  root :to => "home#index", :via => :get

  # Route to product pages
  match 'home/:id' => 'home#show', :as => :store_product, :via => :get

  # Route to pages
  match 'page/:id'     => 'home#page',       :as => 'page',     :via => :get
  match 'search/:id'   => 'search#category', :as => 'category', :via => :get

  # On Sale
  match 'sale' => 'home#sale', :as => 'sale', :via => :get
  match 'new'  => 'home#new',  :as => 'new',  :via => :get

  # Search routes
  match 'search'         => 'home#search',         :as => 'search',         :via => :get
  match 'search_results' => 'home#search_results', :as => 'search_results'#, :via => :post

  # Shopping cart route
  match 'cart'               => 'home#cart',           :as => 'cart',            :via => :get
  match 'empty'              => 'home#empty_cart',     :as => 'empty_cart',      :via => :get
  match 'add_product/:id'    => 'home#add_product',    :as => 'add_product',     :via => :get
  match 'remove_product/:id' => 'home#remove_product', :as => 'remove_product',  :via => :get
  match 'checkout'           => 'home#checkout',       :as => 'checkout',        :via => :post
  match 'create'             => 'home#create',         :as => 'create',          :via => :post
  match 'edit_cart'          => 'home#edit_cart',      :as => 'edit_cart',       :via => :get

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # root :to => "home#index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
