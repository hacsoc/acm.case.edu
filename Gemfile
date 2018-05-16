source 'https://rubygems.org'

ruby '2.4.4'

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Project requirements
gem 'rake'
gem 'rdiscount'
gem 'sinatra-flash', :require => 'sinatra/flash'

# Component requirements
gem 'haml'

# Test requirements

# Padrino Stable Gem
gem 'padrino', '0.10.7'

group :development do
  gem 'shotgun'
  gem 'pry'
end 
group :production do
  gem 'unicorn'
end

# Or Padrino Edge
# gem 'padrino', :git => 'git://github.com/padrino/padrino-framework.git'

# Or Individual Gems
# %w(core gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.10.7'
# end
