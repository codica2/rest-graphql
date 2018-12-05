module Resolvers

  class UpdateAuthor < GraphQL::Function

    argument :id, !types.ID, 'the ID of the author to edit'
    argument :name, types.String, 'the new name'

    type Types::AuthorType

    def call(_obj, args, _ctx)
      author = Author.find_by(id: args[:id])
      author.update!(name: args[:name])
      author
    end

  end

end
