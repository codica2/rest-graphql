module Types

  class BookType < Types::BaseObject

    field :id, ID, "Book's id", null: false
    field :title, String, "Book's title", null: false
    field :description, String, "Book's description", null: true
    field :authors, [Types::AuthorType], null: false

  end

end
