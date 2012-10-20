Auctionmanager::Application.routes.draw do
  resources :auction_items

    match 'auction_items/items_for_bidder/', :controller=>'auction_items', :action=>'items_for_bidder'
  
  resources :items

  resources :buyers

    match 'buyers/:id/cashout', :controller=>'buyers', :action=>'cashout'
    match 'buyers/:id/here', :controller=>'buyers', :action=>'here'

  resources :donors

  resources :auction_tables

    match 'auction_tables/:id/closetable', :controller=>'auction_tables', :action=>'closetable'

  resources :auctions

    match 'auction/update_auction_session/:id', :controller=>'auctions', :action=>'update_auction_session'

  resources :organization_members

  resources :organizations

  devise_for :users

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
   root :to => "auctions#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  #root :to => "addresses#index"
end
