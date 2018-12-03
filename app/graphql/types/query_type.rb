Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allAuthors, !types[Types::AuthorType] do
    resolve ->(_obj, _args, _ctx) { Author.all }
  end

  field :allBooks, !types[Types::BookType] do
    resolve ->(_obj, _args, _ctx) { Book.all }
  end
end
