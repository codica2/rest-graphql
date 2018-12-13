module Types

  class AuthorType < Types::BaseObject

    description 'Author of the books'

    field :id, ID, null: false
    field :name, String, "Author's name", null: false
    field :books, [Types::BookType], null: true

  end

end
