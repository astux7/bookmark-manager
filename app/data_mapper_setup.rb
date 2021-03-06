env = ENV["RACK_ENV"] || "development"

# we're telling datamapper to use a postgres database on localhost. The name will
# be "bookmark_manager_test" or "bookmark_manager_development" depending on the environment
#DataMapper::Logger.new("log.txt", :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{env}")



# After declaring your models, you should finalise them
DataMapper.finalize

# However, how database tables don't exist yet. Let's tell datamapper to create them
#DataMapper.auto_upgrade!
