Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createAuthor, function: Mutations::AuthorMutations::Create.new
  field :createBook,   function: Mutations::BookMutations::Create.new
  field :updateAuthor, function: Mutations::AuthorMutations::Update.new
  field :updateBook,   function: Mutations::BookMutations::Create.new
  field :deleteAuthor, function: Mutations::AuthorMutations::Destroy.new
  field :deleteBook,   function: Mutations::AuthorMutations::Destroy.new
end
