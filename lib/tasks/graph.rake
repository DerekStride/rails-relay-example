require "#{Rails.root}/app/graph/types/timeline_type"
require "#{Rails.root}/app/graph/types/author_type"
require "#{Rails.root}/app/graph/types/comment_type"
require "#{Rails.root}/app/graph/types/simple_type"
require "#{Rails.root}/app/graph/types/query_type"
require "#{Rails.root}/app/graph/resolvers/active_record_resolver"
require "#{Rails.root}/app/graph/relay_on_rails_schema"

namespace :graph do
  task :schema_dump do
    File.write(
      'vendor/assets/javascripts/relay/data/schema.json',
      RelayOnRailsSchema.execute(GraphQL::Introspection::INTROSPECTION_QUERY).to_json
    )
  end
end
