Rails.application.routes.draw do
  #master menu#
  get 'mastermenu/user_manage'
  get 'mastermenu/levelup/:user_id' => 'mastermenu#levelup'
  get 'mastermenu/leveldown/:user_id' =>"mastermenu#leveldown"
  get 'mastermenu/otherinfo/:user_id' =>"info#otherinfo"
  get 'mastermenu/destroy/:user_id' =>"mastermenu#destroy"
  get 'mastermenu/index'

  get 'mastermenu/write_email/:user_id' => "mastermenu#write_email"
  post 'send_email/:user_id'=>'mastermenu#send_email'

  get 'mastermenu/write_sms/:user_id' =>"mastermenu#write_sms"
  post 'send_sms/:user_id'=>'mastermenu#send_sms'

  #search#
  get 'search/user'
  get 'search/search_main'
  get 'user' =>"search#user"
  get 'search/flea_application_date'
  get 'search/flea_city_place'
  get 'search/flea_event_date'
  get 'search/planner'
  get 'search/seller'
  #item#
  get 'item/create'
  post 'create_item' => "item#create_item"
  get 'destroy_item/:item_id' =>"item#destroy"
  get 'update_item/:item_id' => "item#update"
  post 'real_update_item/:item_id'=>"item#real_update"
  get 'item/show'
  get 'item/real_update'
  get 'item/destroy'
  get 'production_process/:item_id' => "item#production_process"
  #info#
  get 'info/myinfo'
  get 'otherinfo/:user_id' => "info#otherinfo"
  get 'info/levelup'
  get 'standby/:user_id' => "info#standby"
  #flea#
  resources :fleas do
    member do
      post 'like'
      post 'dislike'
    end
  end

  #home#
  post 'home/upload'
  get 'home/index'
  get 'home/blog'
  root 'home#index'
  #devise#
  devise_for :users, :controllers => { registrations: 'registrations' }
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
