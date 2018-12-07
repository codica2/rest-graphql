module Mutations

  module AuthorMutations

    class Create < GraphQL::Function

      argument :name, !types.String

      type Types::AuthorType

      def call(_obj, args, _ctx)
        Author.create!(name: args[:name])
      end

    end

  end

end
