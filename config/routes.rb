Rails.application.routes.draw do

  resource :shorteners, only: [:index, :new, :show]
  root "shorteners#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
