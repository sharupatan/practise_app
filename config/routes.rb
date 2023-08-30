Rails.application.routes.draw do
  namespace :zomato do
    resources :restaurants do
      resources :foods
    end
  end

  get '*path' => 'not_found#index'
end
