Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      jsonapi_resources :tickets      

      post 'regist'  => 'tickets#parse_and_persist', defaults: {format: :json}
    end
  end

  resources :tickets
end
