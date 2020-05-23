Rails.application.routes.draw do
  get 'healthz', to: "healthcheck#healthz", as: :health_check

  root to: 'boards#index'

  resources :boards, only: %i[index]
  resources :articles, only: %i[index]

  namespace :api, defaults: { format: :json } do
    namespace :v0 do
      resources :articles, only: %i[index show create update destroy]
    end
  end
end
