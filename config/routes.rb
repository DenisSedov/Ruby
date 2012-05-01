PersonnelAgency::Application.routes.draw do

  get "pages/home" 
  get "pages/contact"
  get "workers/vacancy_for_workers" 
  #get "users/new"
  
  
  match '/home',   :to => 'pages#home'
  root_path = '/home'
  
  match '/contact', :to => 'pages#contact'
  contact_path = '/contact'
  
  match '/signup', :to => 'users#new'
  signup_path = '/signup'
  
  workers_path = '/workers'
  vacancies_path = '/vacancies'
  
  match '/vacancyworkers', :to => 'workers#vacancy_for_workers'
  vacancy_for_workers_path = '/vacancyworkers'

  root :to => 'pages#home'

  resources :statuses
  resources :skillgroups
  resources :skills
  resources :contactinformations
  resources :workers
  resources :vacancies 
  resources :users

end
