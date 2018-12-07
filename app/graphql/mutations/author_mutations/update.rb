module Mutations

  module AuthorMutations

    class Update < GraphQL::Function

      argument :id, !types.ID, 'the ID of the author to edit'
      argument :name, !types.String, 'the new name'

      type Types::AuthorType

      def call(_obj, args, _ctx)
        Author.find_by(id: args[:id])&.update!(name: args[:name])
      end

    end

  end

end
