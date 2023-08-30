namespace :zomato do
	resources :restaurants do
		resources :foods
		member do
			get 'search'
		end
	end
end