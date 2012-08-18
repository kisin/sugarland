Sugarland::Application.routes.draw do

	root :to => 'home#index'

	match '/create' => 'home#create', :as => 'create', :via => :post
end
