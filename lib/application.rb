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

  get "/songs" do
    haml :songs
  end

  def redirect_to_random_song
    redirect next_random_song_url
  end

  def next_random_song_url
    random_song = Songs.all.sample
    @next_random_song_url ||= random_song.url
  end

  def song
    Songs.all.find {|s| s.artist.slugify == params[:artist] && s.track.slugify == params[:track]}
  end
end
