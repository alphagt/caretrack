Rails.application.routes.draw do
  resources :clients


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to => "users#home"
	devise_for :users
	resources :users do
		get 'home', :on => :member
		get 'admin_home', :on => :member
	end

end
