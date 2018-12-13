module Mutations

  module AuthorMutations

    class UpdateAuthor < Mutations::BaseMutation

      null false

      argument :id, ID, 'the ID of the author to edit', required: true
      argument :name, String, 'the new name', required: true

      field :author, Types::AuthorType, null: true
      field :errors, [String], null: false

      def resolve(id:, name:)
        author = Author.find_by(id: id)
        if author&.update(name: name)
          {
            author: author,
            errors: []
          }
        else
          {
            author: nil,
            errors: author.errors.full_messages
          }
        end
      end

    end

  end

end
