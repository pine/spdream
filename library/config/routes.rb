# -*- coding: utf-8 -*-

Library::Application.routes.draw do
  # routes.txt より
  # 詳細は rake routes 参照
  #
  # * 階層構造にしたい
  #   scope 'パス' do ～ end で囲む
  #
  # * ルートを一つ作る
  #   match 'URL' => 'コントローラー#メソッド', :as => '名前'
  #   - 名前は、名前_path としてビューで使えます。
  #
  # * Scaffold のルート
  #   resources :モデル名s
  #
  scope 'library' do
    
    # CMS
    get 'cms-login' => 'login#login'
   
    scope 'cms-top' do
      # /library/cms-top/main
      get 'main' => 'cms_top#main', :as => 'cms_top_main'
      
      # /library/cms-top/books
      get 'books' => 'cms_top#books', :as => 'cms_top_books'
    end
    
    # from Watanabe routes.rb
    scope 'cms-opacplus' do
      resources :categories
      resources :tags
      resources :requests
      resources :child_categories
      
      resources :books, :as => 'cms_books' do
        resources :reviews
      end
    end
    
    # from Keisuke routes.rb
    resources :theses, :path => 'cms-thesis', :except => :show do
      collection do
        get 'deleted'
        get 'lab' # /library/cms-thesis/lab
        # get 'faculty'
        get 'faculty/:id' =>'theses#faculty' # /library/cms-thesis/faculty/:id
        get 'all'
      end
    end
    
    scope 'cms-thesis' do
      resources :faculties
      resources :labs
      post ':id' => 'theses#hide_and_restore' # /library/cms-thesis/:id
    end
    
    resources :thesis_tops, :path => 'thesis', :only => :index do
      collection do
        get 'lab'
        get 'faculty'
        get 'all'
        get 'download' => 'thesis_tops#download'
      end
      member do
      end
    end 

    # from tanaka routes.rb
    scope 'cms-schedule' do
      resources :events
      resources :news
    end

    # User
    
    # from tanaka routes.rb
    get 'index' => 'tops#index' # /library/index
    scope 'index' do
      get 'events' => 'tops#index_event'
      get 'news' => 'tops#index_news'
      get 'event/:id' => 'tops#show_event'
      get 'news/:id' => 'tops#show_news'
    end
    
    get'opacplus' => 'opacplus#index'
    scope 'opacplus' do
      match "index",
        :controller => :opac_tops,
        :action => :index,
        :via => :GET,
        :as => 'opacplus_index'
      match "book",
        :controller => :opac_tops,
        :action => :index_book,
        :via => :GET,
        :as => 'opacplus_book'
      match "bookinfo",
        :controller => :opac_tops,
        :action => :show_book,
        :via => :GET,
        :as => 'opacplus_bookinfo'
      match "tag",
        :controller => :opac_tops,
        :action => :index_tag,
        :via => :GET,
        :as => 'opacplus_tag'
    end
    
    resources :theses do
      collection do
        # get 'faculty'
        get 'faculty/:id' => 'theses#faculty' # /library/thesis/faculty/:id
        get 'lab' # /library/thesis/lab
      end
    end
  end

  
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
