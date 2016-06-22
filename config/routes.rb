Rails.application.routes.draw do
  resources :likes, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # resources :articles, except: [:new, :edit] do
  #   resources :comments, only: [:index, :create]
  # end
  # resources :comments, except: [:new, :edit]

  resources :articles, except: [:new, :edit] do
    resources :comments, except: [:new, :edit], shallow: true
  end

end
