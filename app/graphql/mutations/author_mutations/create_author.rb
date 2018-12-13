module Mutations

  module AuthorMutations

    class CreateAuthor < Mutations::BaseMutation

      null true

      argument :name, String, required: true

      field :author, Types::AuthorType, null: true
      field :errors, [String], null: false

      def resolve(name:)
        author = Author.create(name: name)
        if author.present?
          # Successful creation, return the created object with no errors
          {
            author: author,
            errors: []
          }
        else
          # Failed save, return the errors to the client
          {
            author: nil,
            errors: author.errors.full_messages
          }
        end
      end

    end

  end

end
