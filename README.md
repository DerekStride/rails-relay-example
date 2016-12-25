# Quick Setup

```bash
bundle install
npm install

rake db:migrate
rake db:seed
rake graph:schema_dump

rails server
```

# Config

For our asset pipeline to work with babel and transpile our ES6 files we need Sprockets 4 and Sprockets Commoner. We're also working with graphql-ruby and the graphiql console for debugging the schema.

```ruby
# ./Gemfile
gem 'sprockets', '4.0.0.beta4'
gem 'sprockets-commoner'
gem 'graphql'
gem 'graphiql-rails', '=1.3'
```

Getting the proper configs for babel requires making sure that `babel-preset-es2015`, `babel-preset-stage-0`,
`babel-relay-plugin-loader` are included in the package.json file. You also want to include metadata that points to your schema so that `babel-relay-plugin-loader` knows where to look for when building the plugin for your schema.

```json
/* ./package.json */
{
  "metadata": {
    "graphql": {
      "schema": "./vendor/assets/javascripts/relay/data/schema.json"
    }
  },
  "dependencies": {
    "babel-preset-es2015": "^6.18.0",
    "babel-preset-stage-0": "^6.16.0",
    "babel-relay-plugin-loader": "^0.10.0",
  }
}
```

```json
/* ./.babelrc */
{
  "presets": [
    "es2015",
    "react",
    "stage-0"
  ],
  "env": {
    "development": {
      "plugins": [
        "babel-relay-plugin-loader"
      ]
    },
    "production": {
      "plugins": [
        "babel-relay-plugin-loader"
      ]
    }
  }
}

```
