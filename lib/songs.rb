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
				:artist => "Gotye feat. Kimbra",
				:track  => "Somebody I Use To Know",
				:url 		=> "http://www.youtube.com/watch?v=8UVNT4wvIGY"
			},
			{
				:artist => "Oasis",
				:track  => "Wonderwall",
				:url 		=> "http://www.youtube.com/watch?v=6hzrDeceEKc"
			},
			{
				:artist => "Bob Dylan",
				:track  => "Like A Rolling Stone",
				:url 		=> "http://www.youtube.com/watch?v=hk3mAX5xdxo"
			},
			{
				:artist => "Rolling Stones",
				:track  => "I Can't Get No Satisfaction",
				:url 		=> "http://www.youtube.com/watch?v=3a7cHPy04s8"
			},
			{
				:artist => "John Lennon",
				:track  => "Imagine",
				:url 		=> "http://www.youtube.com/watch?v=9Q0Eyw3l3XM"
			}
    ]
  end
end
