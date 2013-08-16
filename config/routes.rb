GiveForward::Application.routes.draw do
  resources :users, :only => [:create, :show]

  post '/signin'      => "sessions#create"
  post '/fundraisers' => "fundraisers#index"
end
