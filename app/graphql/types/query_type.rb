Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allAuthors, !types[Types::AuthorType] do
    resolve ->(_obj, _args, _ctx) { Author.all }
  end

  field :allBooks, !types[Types::BookType] do
    resolve ->(_obj, _args, _ctx) { Book.all }
  end

  field :findAuthor, !types[Types::AuthorType], 'returns the queried Author' do
    argument :id, !types.ID
    resolve ->(_obj, args, _ctx) { Author.where(id: args[:id]) }
  end

  field :findBook, !types[Types::BookType], 'returns the queried Book' do
    argument :id, !types.ID
    resolve ->(_obj, args, _ctx) { Book.find_by(id: args[:id]) }
  end
end
