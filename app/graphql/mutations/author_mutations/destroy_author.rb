module Mutations

  module AuthorMutations

    class DestroyAuthor < Mutations::BaseMutation

      null false

      argument :id, ID, 'the ID of the author to delete', required: true

      field :author, Types::AuthorType, null: true
      field :errors, [String], null: false

      def resolve(id:)
        author = Author.find_by(id: id)
        author&.destroy
        {
          author: author,
          errors: []
        }
      end

    end

  end

end
