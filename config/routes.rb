Sugarland::Application.routes.draw do

	root :to => 'home#index'

	match '/create' => 'home#create', :as => 'create', :via => :post
	match 'list' => 'list#index', :as => 'list', :via => :get
end
