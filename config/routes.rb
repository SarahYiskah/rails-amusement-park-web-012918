Rails.application.routes.draw do
  get 'session/create'

  resources :attractions, :users, :rides

  get '/', to: "application#home", as: 'root'

end
