class Songs
  def self.random_song
    all.sample
  end

  def self.all
    [
      {
        :artist => "Cat Power",
        :track  => "I Found a Reason",
        :url    => "https://www.youtube.com/watch?v=uEApf_FT25M"
      },
      {
        :artist => "Birdy",
        :track  => "Skinny Love",
        :url    => "http://www.youtube.com/watch?v=aNzCDt2eidg"
      },
      {
        :artist => "Pink Floyd",
        :track  => "Wish You Were Here",
        :url    => "http://www.youtube.com/watch?v=QCQTr8ZYdhg"
      },
      {
        :artist => "Led Zeppelin",
        :track  => "Tangerine",
        :url    => "http://www.youtube.com/watch?v=leeMrymeflQ"
      },
      {
        :artist => "Queen",
        :track  => "Don't Stop Me Now",
        :url    => "http://www.youtube.com/watch?v=HgzGwKwLmgM"
      },
      {
        :artist => "Focus",
        :track  => "Hocus Pocus",
        :url    => "http://www.youtube.com/watch?v=g4ouPGGLI6Q"
      }
    ]
  end
end
