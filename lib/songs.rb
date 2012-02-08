require "httparty"
require "json"

class Songs
  def self.all
    @songs ||= download_songs
    Process.fork do
      @songs = download_songs
    end
    @songs
  end

  private

    def self.download_songs
      @songs = JSON.parse(HTTParty.get("https://raw.github.com/AndrewVos/fuckingawesomesongs.com/master/songs").body)
    end
end
