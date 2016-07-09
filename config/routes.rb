Rails.application.routes.draw do

  get 'subscribe' => 'subscribe#new'
  post 'subscribe' => 'subscribe#create'
  get 'subscribed' => 'subscribe#finished'

  get '31415926' => 'messages#index'

  root 'static_pages#home'

  resources :messages, only: [:new, :create]

  get 'bpm' => 'static_pages#bpm'
  get 'ok' => 'messages#ok'

end
