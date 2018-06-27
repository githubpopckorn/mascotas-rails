Rails.application.routes.draw do


  resources :adoptions
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :states
  resources :pets do
    collection do
      get 'search'
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  authenticated :user do
    root to: "main#dashboard", as: :authenticated_root
  end

  root to: "main#home"


  get '/revisiones/:id', to: "states#revisiones", as: :revisiones
  get '/contrato/:id', to: "adoptions#contrato", as: :show_contrato
  get '/tienda/', to: "main#tienda", as: :show_tienda
end
