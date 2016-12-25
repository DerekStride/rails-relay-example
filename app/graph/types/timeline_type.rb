TimelineType = GraphQL::ObjectType.define do
  name 'Timeline'
  description 'A timeline of comments'
  interfaces [GraphQL::Relay::Node.interface]
  global_id_field :id

  connection :comments do
    type CommentType.connection_type

    resolve -> (_, args, _) { Comment.all }
  end
end
