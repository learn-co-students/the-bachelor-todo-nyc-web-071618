require "pry"

def get_first_name_of_season_winner(data,season)
answer=""
  data.each do |each_season, players_array|
    if each_season == season
    players_array.each do |player_hash|
      if player_hash["status"]=="Winner"
        answer=player_hash["name"].split.first
        end
      end
    end
  end
  answer
end

def get_contestant_name(data, occupation)
  answer=""
  data.each do |each_season, players_array|
    players_array.each do |player_hash|
      if player_hash["occupation"]==occupation
        answer=player_hash["name"]
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
count=0
  data.each do |each_season, players_array|
    players_array.each do |player_hash|
    if player_hash["hometown"]==hometown
      count+=1
        end
      end
    end
  count
end

def get_occupation(data, hometown)
  answer=""
  data.each do |each_season, players_array|
    players_array.each do |player_hash|
      if player_hash["hometown"]==hometown && answer==""
        answer=player_hash["occupation"]
      end
    end
  end
  answer
end

def get_average_age_for_season(data, season)
  age=[]
  data.each do |each_season, players_array|
    if each_season==season
      players_array.each do |player_hash|
      age << player_hash["age"].to_f
      end
    end
  end
  (age.reduce(:+)/age.length).round
end
