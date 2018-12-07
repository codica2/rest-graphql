module Mutations

  module BookMutations

    class Destroy < GraphQL::Function

      argument :id, !types.ID, 'the ID of the author to destroy'

      type Types::BookType

      def call(_obj, args, _ctx)
        Book.find_by(id: args[:id])&.destroy
      end

    end

  end

end
