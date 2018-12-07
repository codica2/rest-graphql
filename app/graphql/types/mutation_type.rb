Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createAuthor, function: Resolvers::AuthorResolver::Create.new
  field :createBook,   function: Resolvers::BookResolver::Create.new
  field :updateAuthor, function: Resolvers::AuthorResolver::Update.new
  field :updateBook,   function: Resolvers::BookResolver::Create.new
  field :deleteAuthor, function: Resolvers::AuthorResolver::Destroy.new
  field :deleteBook, function: Resolvers::AuthorResolver::Destroy.new
end
