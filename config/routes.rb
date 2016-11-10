Rails.application.routes.draw do
  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

    get    '/questions'         => 'questions#index', as: "questions"
    get    '/questions/new'       => 'questions#new', as: "new_questions"
    post   '/questions/new'     => 'questions#create'
    get    '/questions/:id'       => 'questions#show', as: "question"
    get    '/questions/:id/edit'  => 'questions#edit', as: "edit_questions"
    put    '/questions/:id'       => 'questions#update'
    patch  '/questions/:id'       => 'questions#update'
    delete '/questions/:id'       => 'questions#destroy'
    
    put     '/users/:id'        => 'users#update'
    patch   '/users/:id'        => 'users#update'
    
    post '/answers'     => 'answers#create'
    get '/get_questions' => 'questions#ask'
end
