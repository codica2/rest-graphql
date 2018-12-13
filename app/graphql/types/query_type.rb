module Types

  class QueryType < Types::BaseObject

    field :authors, [Types::AuthorType], null: false
    field :books, [Types::BookType], null: false

    field :author, Types::AuthorType, null: true do
      argument :id, ID, required: true
    end

    field :book, Types::BookType, null: true do
      argument :id, ID, required: true
    end

    def authors
      Author.all
    end

    def author(id:)
      Author.find_by(id: id)
    end

    def books
      Book.all
    end

    def book(id:)
      Book.find_by(id: id)
    end

  end

end
