Rails.application.routes.draw do
  # get 'games/new'
  # get 'games/score'
  get '/new', to: 'games#new', as: :new
  post '/score', to: 'games#score'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



  # get '/ask', to: 'questions#ask', as: :ask
  # get '/answer', to: 'questions#answer', as: :answer


 #  Prefix Verb URI Pattern      Controller#Action
 #   new GET  /new(.:format)   games#new
 # score POST /score(.:format) games#score
