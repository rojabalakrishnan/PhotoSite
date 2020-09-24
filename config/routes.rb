Rails.application.routes.draw do
  get 'user/index'
  get 'user/photo'
  get 'user/comment'
  root to: 'user#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
