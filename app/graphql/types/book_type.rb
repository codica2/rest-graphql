Types::BookType = GraphQL::ObjectType.define do
  name 'Book'

  field :id, !types.ID
  field :title, !types.String
  field :description, types.String
  field :authors, !types[Types::AuthorType] do
    # preload includes authors and solves N+1 problem
    preload :authors
    resolve ->(obj, _args, _ctx) { obj.authors }
  end
end
