Rails.application.routes.draw do

  resources :dogs do
    collection do
      get 'index'
    end
    get '/therapyTeam', :to => redirect('static_pages/therapyTeam.html.erb')
    get '/readTeam', :to => redirect('static_pages/readTeam.html.erb')
    end
    resources :contact_us do
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