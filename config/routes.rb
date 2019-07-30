Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'point_of_interests/highlights', as: 'highlights'
      get 'point_of_interests/closest_highlight', as: 'closest_highlight'
    end
  end
end
