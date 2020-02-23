Rails.application.routes.draw do
  

    resources :flows do 
      resources :ratings
      resources :tasks do
          resources :videos
          resources :checklists
          resources :forms
          resources :images
          resources :batches do
            resources :interactions
          end
      end
    end
  
  namespace 'api' do
    namespace 'v1' do    
resources :users , defaults: { format: :json } 
  end
end
  root to: 'users#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
