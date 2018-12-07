module Resolvers

  module BookResolver

    class Update < GraphQL::Function

      argument :id, !types.ID, 'the ID of the book to edit'
      argument :title, types.String, 'the new title'
      argument :description, types.String, 'the new description'

      type Types::BookType

      def call(_obj, args, _ctx)
        book = Book.find_by(id: args[:id])
        book.update!(title: args[:title], description: args[:description])
        book
      end

    end

  end

end
