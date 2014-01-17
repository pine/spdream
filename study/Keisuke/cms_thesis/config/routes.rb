CmsThesis::Application.routes.draw do

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

  # 論文CMS側
  resources :theses, :except => :show do
    collection do
      get 'deleted'
      get 'lab'
      get 'faculty'
      get 'all'
    end
    member do
      get 'download' => 'theses#download'
    end
  end
  post 'theses/:id' => 'theses#hide_and_restore'
  resources :labs 
  resources :faculties

  # 論文ユーザ側
  resources :thesis_tops, :only => :index do
    collection do
      get 'lab'
      get 'faculty'
      get 'all'
      get 'download' => 'thesis_tops#download'
    end
    member do
    end
  end 

#  match "tops", :controller => :thesis_tops, :action => :index ,:via => :GET


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
  root :to => 'theses#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
