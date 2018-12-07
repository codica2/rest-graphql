Types::BookType = GraphQL::ObjectType.define do
  name 'Book'

  field :id, !types.ID
  field :title, !types.String
  field :description, types.String
  field :authors, !types[Types::AuthorType]
end
