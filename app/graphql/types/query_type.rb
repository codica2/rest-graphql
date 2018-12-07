Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allAuthors, !types[Types::AuthorType] do
    type types[Types::AuthorType]
    resolve ->(_obj, _args, _ctx) { Author.all }
  end

  field :allBooks, !types[Types::BookType] do
    resolve ->(_obj, _args, _ctx) { Book.all }
  end

  field :findAuthor, Types::AuthorType, 'returns the queried Author' do
    argument :id, !types.ID
    resolve ->(_obj, args, _ctx) { Author.find_by(id: args[:id]) }
  end

  field :findBook, Types::BookType, 'returns the queried Book' do
    argument :id, !types.ID
    resolve ->(_obj, args, _ctx) { Book.find_by(id: args[:id]) }
  end
end
