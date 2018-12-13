module Mutations

  module BookMutations

    class DestroyBook < Mutations::BaseMutation

      null false

      argument :id, ID, 'the ID of the book to delete', required: true

      field :book, Types::BookType, null: true
      field :errors, [String], null: false

      def resolve(id)
        book = Book.find_by(id: id)&.destroy
        {
          book: book,
          errors: []
        }
      end

    end

  end

end
