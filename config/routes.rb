Rails.application.routes.draw do

  get 'join_flea/index'
  get 'join_flea/join' =>"join_flea#join"
  get 'join_flea/:flea_id' => "join_flea#make"
  get 'apply/:flea_id' => "join_flea#apply"
  #judge menu
  get 'judge_fleas/index'
  get 'judge_fleas/judge/:flea_id' => "judge_fleas#judge"
  get 'judge_fleas/show/:flea_id/:user_id' => "judge_fleas#show"
  post 'confirm_join/:flea_id/:user_id' => "judge_fleas#confirm_join"
  get 'judge_fleas/result/:flea_id/:user_id' => "judge_fleas#result"
  #master menu#
  get 'mastermenu/user_manage'
  get 'mastermenu/levelup/:user_id' => 'mastermenu#levelup'
  get 'mastermenu/leveldown/:user_id' =>"mastermenu#leveldown"
  get 'mastermenu/otherinfo/:user_id' =>"info#otherinfo"
  get 'mastermenu/destroy/:user_id' =>"mastermenu#destroy"
  get 'mastermenu/judge/:user_id' => "mastermenu#judge"
  get 'mastermenu/index'

  get 'mastermenu/write_email/:user_id' => "mastermenu#write_email"
  post 'send_email/:user_id'=>'mastermenu#send_email'

  get 'mastermenu/write_sms/:user_id' =>"mastermenu#write_sms"
  post 'send_sms/:user_id'=>'mastermenu#send_sms'

  get 'mastermenu/write_notice'
  post 'create_notice' =>"mastermenu#create_notice"
  get 'destroy_notice/:notice_id' =>"mastermenu#destroy_notice"
  get 'mastermenu/update_notice/:notice_id' => "mastermenu#update_notice"
  post 'real_update_notice/:notice_id'=>"mastermenu#real_update_notice"

  get 'show_notice/:notice_id' => "mastermenu#show_notice"
  #search#
  get 'search/search_main'
  get 'user' => "search#user"
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
  get 'production_process/:item_id' => "item#production_process"
  post 'pp_edit/:item_id' => "item#pp_create"
  #info#
  get 'showinfo/:user_id' => "info#showinfo"
  get 'info/levelup'
  get 'standby/:user_id' => "info#standby"

  get 'levelupForm' => "info#levelupForm"
  get 'info/add_prize/:user_id' =>"info#add_prize"
  post 'create_prize/:user_id' => "info#create_prize"
  get 'info/add_activity/:user_id' =>"info#add_activity"
  post 'create_activity/:user_id'=>"info#create_activity"

  get 'destroy_activity/:user_id/:activity_id' =>"info#destroy_activity"
  get 'destroy_prize/:user_id/:prize_id' =>"info#destroy_prize"

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
  get 'home/faq'
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
