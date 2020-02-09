Rails.application.routes.draw do
  root 'series#index'
  get 'series/', to: 'series#index'
  get 'series/pesquisa', to: 'series#pesquisa', as: :pesquisa
  get 'series/:tmdb_id', to: 'series#show', as: :seriados
  get 'profiles/show'
  devise_for :users, :controllers => { :registrations => :registrations }
  get ':username/edit', to: 'profiles#edit', as: :edit_profile
  get ':username', to: 'profiles#show', as: :profile
end
