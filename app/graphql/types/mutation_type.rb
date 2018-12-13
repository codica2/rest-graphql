module Types

  class MutationType < Types::BaseObject

    field :create_author,  mutation: Mutations::AuthorMutations::CreateAuthor
    field :destroy_author, mutation: Mutations::AuthorMutations::DestroyAuthor
    field :update_author,  mutation: Mutations::AuthorMutations::UpdateAuthor
    field :create_book,    mutation: Mutations::BookMutations::CreateBook
    field :destroy_book,   mutation: Mutations::BookMutations::DestroyBook
    field :update_book,    mutation: Mutations::BookMutations::UpdateBook

  end

end
