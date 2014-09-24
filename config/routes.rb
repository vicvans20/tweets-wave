Rails.application.routes.draw do
  get '/streams/', to: 'streams#index', as: 'stream_index'
  get '/visitors/:id', to: 'visitors#index'
  root to: 'visitors#index'
end
