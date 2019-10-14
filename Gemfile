source "https://rubygems.org"

gem 'cocoapods', '~> 1.8.1'
gem 'xcpretty'

group :development do
  gem 'fastlane'
  gem 'jazzy'

  plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
  eval_gemfile(plugins_path) if File.exist?(plugins_path)
end
