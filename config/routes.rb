Babel::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root to: "pages#home"  
  
  match '/home', to:  'pages#home'
  
  match '/what', to: 'pages#what'
  
  match '/why', to: 'pages#why'
  
  match '/how', to: 'pages#how'
  
  match '/work' ,to: 'work#work'
  
  match '/workpolicy', to: 'pages#workpolicy'


end
