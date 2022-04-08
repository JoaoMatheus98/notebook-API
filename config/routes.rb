Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :auths, only: [:create]
  resources :kinds
  
  scope module: 'v1' do
    resources :contacts, :constraints => lambda { |request| request.params[:version] == '1'}do
      resource :kind, only: [:show]
      resource :kind, only: [:show], path: 'relationships/kind'

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: 'relationships/phones'
      resource :phone, only: [:create, :update, :destroy]
      resource :phone, only: [:create, :update, :destroy], path: 'relationships/phone'

      resource :address, only: [:show, :update, :create, :destroy]
      resource :address, only: [:show], path: 'relationships/address'
    end
  end

  scope module: 'v2' do
    resources :contacts, :constraints => lambda { |request| request.params[:version] == '2'} do
      resource :kind, only: [:show]
      resource :kind, only: [:show], path: 'relationships/kind'

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: 'relationships/phones'
      resource :phone, only: [:create, :update, :destroy]
      resource :phone, only: [:create, :update, :destroy], path: 'relationships/phone'

      resource :address, only: [:show, :update, :create, :destroy]
      resource :address, only: [:show], path: 'relationships/address'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end