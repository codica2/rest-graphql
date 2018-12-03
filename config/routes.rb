Rails.application.routes.draw do

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
