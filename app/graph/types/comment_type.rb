CommentType = GraphQL::ObjectType.define do
  name 'Comment'
  description 'A Comment'
  interfaces [GraphQL::Relay::Node.interface]
  global_id_field :id

  field :body, !types.String

  field :author do
    type AuthorType

    resolve -> (comment, _, _) { comment.author }
  end
end
