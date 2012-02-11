require "httparty"
require "json"

class Songs
  def self.all
    @songs ||= download_songs
  end

  private

    def self.download_songs
      @songs = JSON.parse(HTTParty.get("https://raw.github.com/AndrewVos/fuckingawesomesongs.com/master/songs.json").body)
    end
end
