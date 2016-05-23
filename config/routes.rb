Rails.application.routes.draw do
  root to: 'pages#index'
  get '/topic/:id', to: 'tweets#show', as: 'topic'
end
