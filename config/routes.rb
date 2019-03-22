Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  #GET request -> to the pages controller and serv the about view
  get 'about' => 'pages#about'
  get 'my_test' => 'contact#test'
end
