Rails.application.routes.draw do

  resources :dogs do
    collection do
      get 'list'
    end
    end
    resources :contact_us do
      collection do
        get 'create'
      end
    end
  root 'events#home'
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  resources :events do
    collection do
      get 'list'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end