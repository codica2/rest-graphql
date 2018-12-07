module Resolvers

  module BookResolver

    class Create < GraphQL::Function

      argument :title, !types.String
      argument :description, types.String

      type Types::BookType

      def call(_obj, args, _ctx)
        Book.create!(title: args[:title], description: args[:description])
      end

    end

  end

end
