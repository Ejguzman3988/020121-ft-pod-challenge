require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)


ENV['SINATRA_ENV'] ||= "development"
ENV['RACK_ENV'] ||= "development"


Bundler.require(:default, ENV['SINATRA_ENV'])

require_relative '../app'


require_all 'app'
