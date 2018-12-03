Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createAuthor, function: Resolvers::CreateAuthor.new
  field :createBook,   function: Resolvers::CreateBook.new
end
