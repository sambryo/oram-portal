Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :admins, :controllers => { :invitations => 'admins/invitations' }
  devise_for :users, :controllers => { :invitations => 'users/invitations'}

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  get 'users/:id' => 'users#show'
  get 'admins/:id' => 'admins#show'

  get 'clients' => 'admins#show_clients', :as => "clients"
  get 'referrals' => 'admins#show_referrals', :as => "admin_referrals"

  get 'referrers' => 'admins#show_referrers', :as => "referrers"
  get 'referrers/:id/edit' => 'users#edit_referrer_profile', :as => "referrer_edit"
  put 'referrers/:id' => 'users#update_referrer_profile', :as => "referrer_update"
  get 'referrers/:id' => 'users#show', :as => "referrer"
  get 'referrers/:id/referrals' => 'users#referrals', :as => "referrals"
  get 'referrers/:id/refer_client' => 'users#refer_client', :as => "refer_client"
  post 'referrers/:id/update_status' => 'admins#mark_referrer_status', :as => 'mark_referrer_status'


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
