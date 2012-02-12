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
      data = HTTParty.get("https://raw.github.com/AndrewVos/fuckingawesomesongs.com/master/songs.flat").body
      data.split("---").map do |song_blob|
        Song.new(
          song_blob.scan(/artist\:\s*(.+)/).first.first,
          song_blob.scan(/track\:\s*(.+)/).first.first,
          song_blob.scan(/id\:\s*(.+)/).first.first
        )
      end
    end
end

class Song
  attr_reader :id, :artist, :track, :url, :title, :youtube_url

  def initialize artist, track, id
    @id           = id
    @artist       = artist
    @track        = track
    @url          = "/#{artist.slugify}/#{track.slugify}"
    @title        = "#{artist} - #{track}"
    @youtube_url  = "http://www.youtube.com/watch?v=#{id}"
  end
end
