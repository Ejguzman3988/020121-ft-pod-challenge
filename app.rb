require_relative 'config/environment'
require "sinatra/base"

class App < Sinatra::Base

  get '/' do
    "hey this is our world!!!"
  end

end
