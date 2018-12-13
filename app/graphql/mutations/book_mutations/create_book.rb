module Mutations

  module BookMutations

    class CreateBook < Mutations::BaseMutation

      null false

      argument :title, String, required: true
      argument :description, String, required: false

      field :book, Types::BookType, null: true
      field :errors, [String], null: false

      def resolve(title:, description:)
        book = Book.create(title: title, description: description)
        if book.present?
          # Successful creation, return the created object with no errors
          {
            book: book,
            errors: []
          }
        else
          # Failed save, return the errors to the client
          {
            book: nil,
            errors: book.errors.full_messages
          }
        end
      end

    end

  end

end
