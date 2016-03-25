Rails.application.routes.draw do

  resources :dogs do
    collection do
      get 'index'
    end
  end
  get 'therapyTeam' => 'static_pages#therapyTeam.html.erb'
  get 'readTeam' => 'static_pages#readTeam.html.erb'
  get 'donate' => 'static_pages#donate.html.erb'
    resources :contacts do
      collection do
        get 'new'
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