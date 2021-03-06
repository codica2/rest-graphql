source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'active_model_serializers'
gem 'graphql'
gem 'graphql-preload', '~> 2.0.1'
gem 'rails', '~> 5.2.1', '>= 5.2.1.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'search_object'
gem 'search_object_graphql'

group :development, :test do
  gem 'faker'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'graphiql-rails'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'fast_jsonapi'
gem 'rack-cors', require: 'rack/cors'
group :development do
  gem 'annotate'
  gem 'overcommit'
  gem 'rubocop', require: false
end

group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end
