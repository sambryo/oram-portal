Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :admins, :controllers => { :invitations => 'admins/invitations' }
  devise_for :users, :controllers => { :invitations => 'users/invitations'}

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  get 'users/:id' => 'users#show'
  get 'admins' => 'admins#show_all', :as => 'admins'
  get 'admins/:id' => 'admins#show', :as => 'admin'
  get 'referrers/:id' => 'users#show', :as => 'referrer'

  get 'clients' => 'admins#show_clients', :as => 'clients'
  get 'referrals' => 'admins#show_referrals', :as => 'admin_referrals'

  get 'referrers' => 'admins#show_referrers', :as => 'referrers'
  get 'referrers/:id/referrals' => 'users#referrals', :as => 'referrals'
  get 'referrers/:id/edit' => 'users#edit_referrer_profile', :as => 'referrer_edit'
  put 'referrers/:id' => 'users#update_referrer_profile', :as => 'referrer_update'
  post 'referrers/:id/update_status' => 'admins#mark_referrer_status', :as => 'mark_referrer_status'

  get 'referrers/:id/refer_client' => 'users#refer_client', :as => 'refer_client'
  post 'referrers/:id/create_referral' => 'users#create_referral', :as => 'create_referral'

  get 'clients/:id' => 'users#show', :as => "client"
  get 'clients/:id/edit' => 'users#edit_client_profile', :as => 'client_edit'
  put 'clients/:id' => 'users#update_client_profile', :as => 'client_update'
  post 'clients/:id/update_status' => 'admins#mark_client_status', :as => 'mark_client_status'

  get 'referrals/:id' => 'forms#show', :as => 'referral'
  post 'referrals/:id/update_status' => 'admins#mark_form_status', :as => 'mark_form_status'

  get 'clients/:id/documents' => 'users#client_documents', :as => 'documents'
  post 'clients/:id/documents' => 'users#upload_document', :as => 'upload'
  
  get 'clients/:id/setting' => 'users#client_setting', :as => 'client_setting'
  get 'clients/:id/setting/edit' => 'users#client_settings_edit', :as => 'client_settings_edit'
  get 'clients/:id/setting/delete' => 'users#client_destroy', :as => 'client_destroy'
  patch 'clients/:id/setting' => 'users#client_edit_save', :as => 'edit_save'
  get 'referrer/:id/setting' => 'users#referrer_setting', :as => 'referrer_setting'
end
