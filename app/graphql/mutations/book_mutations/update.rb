module Mutations

  module BookMutations

    class Update < GraphQL::Function

      argument :id, !types.ID, 'the ID of the book to edit'
      argument :title, !types.String, 'the new title'
      argument :description, types.String, 'the new description'

      type Types::BookType

      def call(_obj, args, _ctx)
        Book.find_by(id: args[:id])&.update!(
          title: args[:title],
          description: args[:description]
        )
      end

    end

  end

end
