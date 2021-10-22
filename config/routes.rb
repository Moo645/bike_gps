Rails.application.routes.draw do
  root 'pages#index'
  get '/index' => 'pages#index'

  resources :bikes do
    resources :gps_records
  end
  


end


