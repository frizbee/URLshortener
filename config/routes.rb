Rails.application.routes.draw do

  get "/:id" => "shorteners#show"
  resource :shorteners, only: [:index, :create]
  root "shorteners#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
