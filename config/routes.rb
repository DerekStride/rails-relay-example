Rails.application.routes.draw do
  root to: 'home#index'
  post '/graphql', to: 'graphql#create'
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: '/graphql'

  scope '/static_pages' do
    get '/board', to: 'static_pages#board'
  end
end
