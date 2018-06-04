def player_by_num(num)
  game_hash.each do |team, team_details|
    team_details[:players].each do |player|
      if player[:number] == num
        return player[:name]
      end
    end
  end
end
def game_hash
  {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
      :name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      },
      {
      :name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
      },
      {
      :name => "Brook Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
      },
      {
      :name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
      },
      {
      :name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
      }
    ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
      :name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
      },
      {
      :name => "Bismak Biyombo", 
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 7,
      :blocks => 15,
      :slam_dunks => 10
      },
      {
      :name => "DeSagna Diop", 
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
      },
      {
      :name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
      },
      {
      :name => "Brendan Haywood",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
      }
    ]
  }
}
end

def num_points_scored(name)
  answer = 0

  game_hash.each do |team, details_hash|
    players_array = details_hash[:players]
      players_array.each do |player_details_hash|
        if player_details_hash[:name] == name
          answer = player_details_hash[:points]
        end
      end
  end
  answer
end


def shoe_size(name)
  answer = 0

  game_hash.each do |team, details_hash|
    players_array = details_hash[:players]
      players_array.each do |player_details_hash|
        if player_details_hash[:name] == name
          answer = player_details_hash[:shoe]
        end
      end
  end
  answer
end

def team_colors(team_name)
  color = nil
  
    game_hash.each do |team, team_hash|
      if team_hash[:team_name] == team_name
        color = team_hash[:colors].flatten
      end
    end
    color
  end

def team_names()
  game_hash.collect do |team, team_details|
    team_details[:team_name]
  end
end

def player_numbers(teamName)
  arr = []
  game_hash.each do |team, team_details|
    if team_details[:team_name] == teamName
      team_details[:players].each do |player|
        player.each do |score, value|
          if score == :number
            arr << value
          end
        end
      end
     end
    end
      arr
 end   

def player_stats(name)
  statHash ={}
  game_hash.each do |team, team_details|
    team_details[:players].each do |stat|
      if stat[:name] == name
        stat.delete(:name)
        statHash = stat
      end
    end
  end
  statHash
end

def big_shoe_rebounds
  largestShoe = 0
  rebounds = 0

  game_hash.each do |team, team_details|
    team_details[:players].each do |stats|
      if stats[:shoe] > largestShoe
        largestShoe = stats[:shoe]
        rebounds = stats[:rebounds]
      end
    end
  end
  rebounds
end

#bonus

def most_points_scored
 highestScore = 0
  game_hash.each do |team, team_details|
    team_details[:players].each do |stats|
      if stats[:points] > highestScore
        highestScore = stats[:points]
      end
    end
  end
  highestScore
end


  