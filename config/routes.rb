Rails.application.routes.draw do
  root to: 'schedule#index'
  get 'schedule/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
