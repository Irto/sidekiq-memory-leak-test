source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2', '>= 5.0.7.2'

# Use Puma as the app server
gem 'puma', '~> 3.0'

gem 'mongoid', '~> 7.1'

gem 'sidekiq', '~> 6.2'

source "https://enterprise.contribsys.com/" do
  gem 'sidekiq-pro', '~> 5.1'
  gem 'sidekiq-ent', '~> 2.2.2'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  # gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
