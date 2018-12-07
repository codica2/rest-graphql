Types::AuthorType = GraphQL::ObjectType.define do
  name 'Author'

  field :id, !types.ID
  field :name, !types.String
  field :books, types[Types::BookType]
end
