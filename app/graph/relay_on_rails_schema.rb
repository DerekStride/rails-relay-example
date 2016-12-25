RelayOnRailsSchema = GraphQL::Schema.define do
  query QueryType

  id_from_object ->(object, _, _) { object.to_global_id.to_s }
  object_from_id ->(id, _) { GlobalID::Locator.locate id }

  resolve_type ->(obj, ctx) { RelayOnRailsSchema.types.values.detect { |type| type.name == obj.class.name } }
end
