Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'
  # match 'bulk_upload/index' => 'bulk_upload#index', :as => :bulk_upload
  get '/bulkupload', to: 'bulk_upload#index'
  post '/bulkupload', to: 'bulk_upload#import'
  	
  get '/balance', to: 'users#balance_edit'

  

end
