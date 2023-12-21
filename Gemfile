source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "active_storage_validations", "0.9.8"
gem "cssbundling-rails"
gem "devise", "~> 4.9"
gem "image_processing", "~> 1.2"
gem "jbuilder"
gem "jsbundling-rails"
gem 'paystack'
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.7", ">= 7.0.7.2"
gem "redis", "4.7.1"
gem "sidekiq", "6.5.6"
gem "sprockets-rails"
gem "turbo-rails"
gem "stimulus-rails"


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

group :production do
  gem "aws-sdk-s3", "1.114.0", require: false
end

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"

  # gem "rack-mini-profiler"

  # gem "spring"
  gem "annotate", "~> 3.2"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.15.0"
  gem "minitest-reporters",       "1.5.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
end

gem "dockerfile-rails", ">= 1.6", :group => :development
