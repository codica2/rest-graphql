Rails.application.routes.draw do

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  namespace :api do
    namespace :v1 do

      resources :authors, except: %i[new edit] do
        delete :delete_multiple, on: :collection
      end

      resources :books, except: %i[new edit] do
        delete :delete_multiple, on: :collection
      end

    end
  end

end
