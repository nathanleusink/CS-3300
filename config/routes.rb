Rails.application.routes.draw do
  devise_for :users
  resources :projects do
    get 'list', :on => :collection
    get 'edit_page', :on => :collection
  end
  root to: 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
