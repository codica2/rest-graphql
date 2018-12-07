Types::AuthorType = GraphQL::ObjectType.define do
  name 'Author'

  field :id, !types.ID
  field :name, !types.String
  field :books, !types[Types::BookType] do
    # preload includes books and solves N+1 problem
    preload :books
    resolve ->(obj, _args, _ctx) { obj.books }
  end
end
