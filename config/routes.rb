Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
      resources :trackers do 
        resources :foods
      end
    end
  end 

end
 