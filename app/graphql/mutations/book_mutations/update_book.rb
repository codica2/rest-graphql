module Mutations

  module BookMutations

    class UpdateBook < Mutations::BaseMutation

      null false

      argument :id, ID, 'the ID of the book to edit', required: true
      argument :title, String, 'the new title', required: true
      argument :description, String, 'the new description', required: false

      field :book, Types::BookType, null: true
      field :errors, [String], null: false

      def resolve(id:, name:, description:)
        book = Book.find_by(id: id)
        if book&.update!(name: name, description: description)
          {
            book: book,
            errors: []
          }
        else
          {
            book: nil,
            errors: book.errors.full_messages
          }
        end
      end

    end

  end

end
