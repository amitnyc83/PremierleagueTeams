class PremierleagueTeams::Scraper


def initialize(url = nil)
  @url = url
end


def scrape_teams
@doc = Nokogiri::HTML(open("https://www.premierleague.com/clubs"))
@doc.search("a.indexItem t3")list_teams.each do |team|
  new_team = PremierleagueTeams::Team.new_team
end


end
