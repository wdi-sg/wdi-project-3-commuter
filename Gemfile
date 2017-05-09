source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# # Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# PG
gem 'pg'

# Carrierwave for Cloudinary
gem 'carrierwave', '~> 1.0'
#Cloudinary
gem 'cloudinary'

# Use Puma as the app server
gem 'puma', '~> 3.0'
#bootstrap
gem 'bootstrap-sass', '~> 3.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# font awesome
gem "font-awesome-rails"
# font aswesome for sass
gem 'font-awesome-sass'
# # Use MateralizeCSS
# gem 'materialize-sass'
# # Use MateralizeCSS font
# gem 'material_icons'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Faker to seed data
gem 'faker'
# for windows
gem 'bcrypt', '3.1.11', :require => 'bcrypt'

gem 'wdm'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


# Installing gon for my js manipulation
gem 'gon'
gem 'autoprefixer-rails'
#pry
gem 'pry'

#devise
gem 'devise'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'

  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# ruby 2.4.1
