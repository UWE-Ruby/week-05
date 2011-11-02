
desc "`rake` will default to running `rake:spec`"
task :default => :spec

desc "Run all the rspec examples"
task :spec do
  system "bundle exec rspec -c spec"
end

task :twitter do
  system "bundle exec ruby lib/twitterapi.rb"
end

task :craigslist do
  system "bundle exec ruby lib/craigslist.rb"
end