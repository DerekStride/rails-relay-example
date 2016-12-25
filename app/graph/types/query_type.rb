QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  field :node, GraphQL::Relay::Node.field

  field :author do
    type AuthorType
    argument :id, !types.ID
    resolve ActiveRecordResolver
  end

  field :comment do
    type CommentType
    argument :id, !types.ID
    resolve ActiveRecordResolver
  end

  field :timeline do
    type TimelineType
    argument :id, !types.ID
    resolve -> (_, _, _) { OpenStruct.new(to_global_id: "gid://help-me-react/Timeline/1") }
  end

  field :simple do
    type SimpleType
    resolve -> (_, _, _) { OpenStruct.new(id: rand(1000), name: 'Simpleton') }
  end
end
