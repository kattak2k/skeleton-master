source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

#Ins start rk01 'Updating ruby and Rails version'
  ruby '2.3.3'
#gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
  gem 'rails', '~> 5.0.2'  
#ins end rk01

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'
#Ins start rk01
# To generate a diagram based on your application's Active Record models
gem 'rails-erd'
# JSON Serializer
gem 'active_model_serializers', '~> 0.10.0'
gem 'annotate'
#Ins end rk01

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
