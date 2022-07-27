source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '6.1.6.1'
gem 'lograge',                    '0.11.2'
gem 'image_processing',           '1.12.1'
gem 'mini_magick',                '4.11.0'
gem 'active_storage_validations', '0.9.3'
gem 'bcrypt',                     '3.1.16'
gem 'faker',                      '2.17.0'
gem 'will_paginate',              '3.3.0'
gem 'bootstrap-will_paginate',    '1.0.0'
gem 'bootstrap-sass',             '3.4.1'
gem 'puma',                       '5.3.0'
gem 'sass-rails',                 '6.0.0'
gem 'webpacker',                  '5.3.0'
gem 'turbolinks',                 '5.2.1'
gem 'jbuilder',                   '2.11.2'
gem 'bootsnap',                   '1.7.5', require: false
gem 'rexml',                      '3.2.5'
gem 'pg',                         '1.2.3'
gem 'redis',                      '4.2.5'
gem 'hiredis',                    '0.6.3'
gem 'redis-namespace',            '1.8.1'
gem 'redis-rails',                '5.0.2'
gem 'tzinfo-data',                '1.2021.1'
gem 'rails-healthcheck',          '1.4.0'

group :development, :test do
  # gem 'sqlite3',                  '1.4.2'
  # gem 'mysql2',                   '0.5.3'
  gem 'dotenv-rails',             '2.7.6'
  gem 'byebug',                   '11.1.3', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',              '4.1.0'
  gem 'listen',                   '3.5.1'
  gem 'spring',                   '2.1.1'
  gem 'spring-watcher-listen',    '2.0.1'
  gem 'rack-mini-profiler',       '2.3.2'
end

group :test do
  gem 'capybara',                 '3.35.3'
  gem 'selenium-webdriver',       '3.142.7'
  gem 'webdrivers',               '4.6.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'minitest',                 '5.14.4'
  gem 'minitest-reporters',       '1.4.3'
  gem 'guard',                    '2.16.2'
  gem 'guard-minitest',           '2.4.6'
end

group :production do
  gem 'aws-sdk-s3',               '1.94.1', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
