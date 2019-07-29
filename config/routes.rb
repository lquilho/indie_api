Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'points_of_interest/highlights'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      namespace :point_of_interests do
        resources :highlights, only: [ :index ]
        resources :closest_highlight, only: [ :show ]
      end
    end
  end
end
