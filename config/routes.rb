Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :logs do
    resources :pictures
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
