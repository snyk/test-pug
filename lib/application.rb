require "sinatra/base"

require File.expand_path("lib/songs")

class Application < Sinatra::Base
  get "/" do
    redirect_to_random_song
  end

  get "/:artist/:track" do
    haml :index
  end

  get "/submit" do
    haml :submit
  end

  def redirect_to_random_song
    random_song = Songs.all.sample
    redirect "/#{slugify(random_song[:artist])}/#{slugify(random_song[:track])}"
  end

  def song
    Songs.all.find {|s| slugify(s[:artist]) == params[:artist] && slugify(s[:track]) == params[:track]}
  end

  def slugify string
    string.downcase.gsub(/&/, 'and').gsub(/\s+/, '-').gsub(/[^a-z0-9-]/, '')
  end
end
