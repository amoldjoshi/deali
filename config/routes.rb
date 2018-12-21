Rails.application.routes.draw do
 
  devise_for :users
	
	root to: 'innovations#index'
  
  resources :deal_hunters
  resources :innovations
  resources :weekly_adds
  resources :daily_deals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
