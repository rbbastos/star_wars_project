# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages

  get '/static/:permalink', to: 'pages#permalink', as: 'permalink'

  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
