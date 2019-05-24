Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails, only: [:new, :index, :show, :create] do
    resources :doses, only: [:new, :create, :destroy] do
      resources :ingredients, only: [:new, :create, :destroy, :show]
    end
  end
end
