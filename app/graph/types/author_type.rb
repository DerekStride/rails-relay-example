AuthorType = GraphQL::ObjectType.define do
  name 'Author'
  description 'Author of Comments'
  interfaces [GraphQL::Relay::Node.interface]
  global_id_field :id

  field :name, !types.String

  connection :comments do
    type CommentType.connection_type

    resolve -> (author, _, _) { author.comments }
  end
end
