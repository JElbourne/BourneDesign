Rails.application.routes.draw do
  resources :attachments
  resources :projects
  resources :project_types
  devise_for :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
