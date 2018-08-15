class PremierleagueTeams::Team

  attr_accessor :name, :players, :url, :player_number, :player_position

  @@all = []

  def self.all
    @@all
  end


  def save
    @all << self 
  end


  def players
    @players ||= PremierleagueTeams::Scraper.new(url).scrape_player
  end



end
