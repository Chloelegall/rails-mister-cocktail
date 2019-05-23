Rails.application.routes.draw do
  # get 'doses', to "doses#index"
  # get 'doses/:id', to: "doses#show", as: :dose
  # get 'doses/new', to: "doses#new", as: :new_dose
  # post 'doses', to: 'doses#create', as: :create_dose
  # get 'doses/:id', to: 'doses#destroy', as: :destroy_dose
  # get 'cocktails', to: "cocktails#index"
  # get "cocktails/new", to: "cocktails#new", as: :new_cocktail
  # get "cocktails/:id", to: "cocktails#show", as: :cocktail
  # post "cocktails", to: "cocktails#create", as: :create_cocktail
  # delete "cocktails/:id", to: "cocktails#destroy", as: :destroy_cocktail
  resources :cocktails, only: [:new, :index, :update, :show, :create, :destroy] do
    resources :doses, only: [:index, :new, :create] do
      resources :ingredients, only: [:new, :create, :destroy]
    end
  end
end
