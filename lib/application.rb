require "redcarpet"
require "sinatra/base"

require File.expand_path("lib/songs")

class Application < Sinatra::Base
  get "/" do
    haml :index
  end
end
