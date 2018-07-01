Rails.application.routes.draw do
  root to: 'schedule#index'
  get 'schedule/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
   resources :schedules
   # get "schedules/show/:theater_id/:work_id/" => "schedules#show"

   get "schedules/get/:id/" => "schedules#get"
   get "schedules/show/:theater_id/" => "schedules#show"
   get "schedules/index/:work_id/" => "schedules#index"

   get "schedules/get_date_thea/:id/:theater_id" => "schedules#get_date_thea"
   get "schedules/get_date_work/:id/:work_id" => "schedules#get_date_work"
   get "schedules/get_thea_work/:theater_id/:work_id" => "schedules#get_thea_work"
   get "schedules/get_all_data/:id/:theater_id/:work_id" => "schedules#get_all_data"
  end
end
