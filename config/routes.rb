Rails.application.routes.draw do

 # Routes for the Main resource:
  root "partners#index"

  #------------------------------
  
  # Routes for the Outing resource:
  # CREATE
  get "/outings/new/:id", :controller => "outings", :action => "new"
  post "/create_outing", :controller => "outings", :action => "create"

  # READ
  get "/outings", :controller => "outings", :action => "index"
  get "/outings/:id", :controller => "outings", :action => "show"

  # UPDATE
  get "/outings/:outingid/edit/:partnerid", :controller => "outings", :action => "edit"
  post "/update_outing/:outingid/:partnerid", :controller => "outings", :action => "update"

  # DELETE
  get "/delete_outing/:outingid/:partnerid", :controller => "outings", :action => "destroy"
  
  #------------------------------

  # Routes for the Partner resource:
  # CREATE
  get "/partners/new", :controller => "partners", :action => "new"
  post "/create_partner", :controller => "partners", :action => "create"

  # READ
  get "/partners", :controller => "partners", :action => "index"
  get "/partners/:id", :controller => "partners", :action => "show"

  # UPDATE
  get "/partners/:id/edit", :controller => "partners", :action => "edit"
  post "/update_partner/:id", :controller => "partners", :action => "update"

  # DELETE
  get "/delete_partner/:id", :controller => "partners", :action => "destroy"
    
  #------------------------------

  # Routes for the User resource:
  devise_for :users
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  #------------------------------

  # Routes for the Option resource:
  # CREATE
  get "/options/new", :controller => "options", :action => "new"
  post "/create_option", :controller => "options", :action => "create"

  # READ
  get "/options", :controller => "options", :action => "index"
  get "/options/:id", :controller => "options", :action => "show"

  # UPDATE
  get "/options/:id/edit", :controller => "options", :action => "edit"
  post "/update_option/:id", :controller => "options", :action => "update"

  # DELETE
  get "/delete_option/:id", :controller => "options", :action => "destroy"
 
 
  #------------------------------



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
