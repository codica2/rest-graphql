module Resolvers

  module AuthorResolver

    class Destroy < GraphQL::Function

      argument :id, !types.ID, 'the ID of the author to destroy'

      type Types::AuthorType

      def call(_obj, args, _ctx)
        Author.find_by(id: args[:id])&.destroy
      end

    end

  end

end
