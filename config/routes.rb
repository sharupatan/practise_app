Rails.application.routes.draw do
  namespace :zomato do
    resources :restaurants, path_names: {new: 'brand_new'}
  end

  get '*path' => 'not_found#index'
end
