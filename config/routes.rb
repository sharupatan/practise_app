Rails.application.routes.draw do
  draw :zomato

  get '*path' => 'not_found#index'
end
