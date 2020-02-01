Rails.application.routes.draw do
  get 'profiles/show'
  devise_for :users
  get ':username/edit', to: 'profiles#edit', as: :edit_profile
  get ':username', to: 'profiles#show', as: :profile
end
