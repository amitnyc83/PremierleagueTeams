class PremierleagueTeams::CLI

  def call
    puts"|----------------------------------------------------|"
    puts"|----------------------------------------------------|"
    puts"|                                                    |"
    puts"| Welcome to the Premier League Teams of the season  |"
    puts"|----------------------------------------------------|"
    puts"|----------------------------------------------------|"
    PremierleagueTeams::Scraper.new.scrape_teams
   list_teams
   list_players
   list_player_stats
   more_info_about_player
  end

 def list_teams
  PremierleagueTeams::Team.all.each_with_index do |team, i|
    puts "#{i+1} #{team.name}"
  end
 end

 

 def list_players
   input = nil
   while input != 'exit'
     puts "Select a number from the list about to see the current squad of that team"
     input = gets.strip.downcase

     if input.to_i > 0
       team = @teams [input.to.i-1]
       puts "#{i}. #{player.name}"
 end




end
