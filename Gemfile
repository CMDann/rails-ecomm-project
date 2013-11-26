source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass'
  gem 'sass-rails',   '~> 3.2.3'
  gem "meta_search",    '>= 1.1.0.pre'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem "jquery-rails", "< 3.0.0"
gem 'activeadmin'
gem 'activemerchant'
# gem 'will_paginate', "3.0.pre2" # Active Admin Requires a specific will_paginate gem
gem "paperclip", "~> 3.0"
#gem "cocaine", "= 0.3.2" # Paperyclip was having an error - suggested fix
gem "scoped_search"
gem 'haml-rails'
gem "ckeditor" # WYSIWYG Editor
# gem 'pg', "~> 0.17.0"

gem "heroku"
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  gem 'thin'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
