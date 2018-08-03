Rails.application.routes.draw do
  resources :emojis
  root to: 'pages#home'
end
