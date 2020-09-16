Rails.application.routes.draw do
  get 'welcome/index'
  resources :contacts do
    resources :addresses
  end
  root 'welcome#index'
end
