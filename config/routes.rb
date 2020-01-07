Rails.application.routes.draw do

    root to: "home#index"

    get 'landing_page', to: 'home#landing_page'

    get 'sign_up', to: 'users#new'
    resources :users, except: [:new]

    get 'log_in', to: 'sessions#new'
    post 'log_in', to: 'sessions#create'
    delete 'log_out', to: 'sessions#destroy'

    post 'message', to: 'messages#create'

    mount ActionCable.server, at: '/cable'


end
