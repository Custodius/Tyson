require "rake/testtask"

desc "Run all of the tests"
Rake::TestTask.new do |config|
  config.libs << "test"
  config.pattern = "test/**/*_test.rb"
end

task :default => :test
