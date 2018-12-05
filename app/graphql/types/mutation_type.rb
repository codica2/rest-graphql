Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createAuthor, function: Resolvers::CreateAuthor.new
  field :createBook,   function: Resolvers::CreateBook.new
  field :updateAuthor, function: Resolvers::UpdateAuthor.new
  field :updateBook,   function: Resolvers::UpdateBook.new
end
