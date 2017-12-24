Rails.application.routes.draw do

  get 'subscribe' => 'subscribe#new'
  post 'subscribe' => 'subscribe#create'
  get 'subscribed' => 'subscribe#finished'

  root 'static_pages#home'

  get 'bpm' => 'static_pages#bpm'
  get 'r' => 'static_pages#rekvizity'

end
