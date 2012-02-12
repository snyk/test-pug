require "httparty"
require "json"

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
      puts "downloading"
      @songs = JSON.parse(HTTParty.get("https://raw.github.com/AndrewVos/fuckingawesomesongs.com/master/songs.json").body)
    end
end
