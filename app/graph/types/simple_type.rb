SimpleType = GraphQL::ObjectType.define do
  name 'Simple'
  description 'Simple'
  interfaces [GraphQL::Relay::Node.interface]
  global_id_field :id

  field :name, !types.String, 'Simple name'
end
