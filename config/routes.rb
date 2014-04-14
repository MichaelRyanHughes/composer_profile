ComposerProfile::Application.routes.draw do

  
  root to: "works#index"
  get 'composer', to: 'composer#index'

  devise_for :users#, :skip => [:registrations]
  #as :user do
    #get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    #put 'users' => 'devise/registrations#update', :as => 'user_registration'
  #end
  resources :works
  resources :admin
end
