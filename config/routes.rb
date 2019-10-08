# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'characters/index'
  # get 'characters/show'
  resources :characters, only: %i[index show]
  # get 'starships/index'
  # get 'starships/show'
  resources :starships, only: %i[index show]

  # get 'inhabits/index'
  resources :inhabits, only: :index

  # get 'species/index'
  # get 'species/show'
  resources :species, only: %i[index show]

  # get 'planets/index'
  # get 'planets/show'
  resources :planets, only: %i[index show]

  resources :pages

  get '/static/:permalink', to: 'pages#permalink', as: 'permalink'

  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
