require "httparty"
require "json"
require_relative "string"

class Songs
  CACHE_TIME = 10

  def self.all
    if @songs.nil? || Time.now > (@last_download_time + CACHE_TIME)
      @last_download_time = Time.now
      @songs = download_songs
    end
    @songs
  end

  private

    def self.download_songs
      hash = JSON.parse(HTTParty.get("https://raw.github.com/AndrewVos/fuckingawesomesongs.com/master/songs.json").body)
      hash.map do |song_hash|
        Song.new(song_hash)
      end
    end
end

class Song
  attr_reader :id, :artist, :track, :url, :title, :youtube_url

  def initialize hash
    @id           = hash["id"]
    @artist       = hash["artist"]
    @track        = hash["track"]
    @url          = "/#{artist.slugify}/#{track.slugify}"
    @title        = "#{hash["artist"]} - #{hash["track"]}"
    @youtube_url  = "http://www.youtube.com/watch?v=#{hash["id"]}"
  end
end
