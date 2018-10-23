Rails.application.routes.draw do
  root to: 'fridges#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :fridges do
  resources :foods
  resources :drinks
end

end
