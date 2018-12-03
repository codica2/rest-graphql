Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allAuthors, !types[Types::AuthorType] do
    # resolve would be called in order to fetch data for that field
    resolve ->(_obj, _args, _ctx) { Author.all }
  end
end
