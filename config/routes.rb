Rails.application.routes.draw do
  resources :users
  resources :departments
  resources :employees

 # match '/users'=> 'users#index' , :constraints=>AbilityConstraint.new(:admin),via: [:get,:post]
  #match '/departments'=> 'departments#index' , :constraints=>AbilityConstraint.new(:manager),via: [:get,:post]
 # match '/employees'=> 'employees#index' , :constraints=>AbilityConstraint.new(:manager),via: [:get,:post]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
