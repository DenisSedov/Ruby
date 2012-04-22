PersonnelAgency::Application.routes.draw do

  get "pages/home" 
  get "pages/contact"
  get "users/new"
  
  
  match '/home',   :to => 'pages#home'
  root_path = '/home'
  
  match '/contact', :to => 'pages#contact'
  contact_path = '/contact'
  
  match '/signup', :to => 'users#new'
  signup_path = '/signup'
  
  workers_path = '/workers'
  vacancies_path = '/vacancies'
  

  root :to => 'pages#home'

  resources :statuses
  resources :skillgroups
  resources :skills
  resources :contactinformations
  resources :workers
  resources :vacancies
  resources :users

end
