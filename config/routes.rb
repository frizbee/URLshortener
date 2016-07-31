Rails.application.routes.draw do
  get 'shorteners/index'

  get 'shorteners/new'

  get 'shorteners/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
