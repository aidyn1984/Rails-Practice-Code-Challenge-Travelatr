Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, except: [:destroy]
  resources :destinations, only: [:show]
  resources :bloggers, only: [:index, :new, :create, :show, :destroy]

  patch '/posts/:id/like', to: 'posts#like', as: 'like'
  
end
