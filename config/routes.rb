Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "main/test"  , to: "main#test"
  post "main/test3" , to: "main#test3"
  get "main/test"
  # Defines the root path route ("/")
  # root "articles#index"
  root "main#test2"
end
