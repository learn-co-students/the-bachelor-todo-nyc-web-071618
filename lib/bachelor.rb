
def get_first_name_of_season_winner(data, season)
  # code here
  winner = []
  season = season.downcase
  data[season].map do |x|
    if x["status"] == "Winner"
      winner << x["name"].split(' ')[0]
    end
  end
  winner[0]
end


def get_contestant_name(data, occupation)
  # code here
  person = []
  data.map do |season, array|
    array.map do |x|
    if x["occupation"] == occupation
      person << x["name"]
    end
  end
end
  person.join("")
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.map do |season, array|
    array.map do |x|
    if x["hometown"] == hometown
      counter += 1
    end
  end
end
  counter
end

def get_occupation(data, hometown)
  # code here
  persons = []
  data.map do |season, array|
    array.map do |x|
    if x["hometown"] == hometown
      persons << x["occupation"]
    end
  end
end
  persons[0]
end


def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].map do |x|
    ages << x["age"].to_i
  end
  (ages.reduce(:+).to_f / ages.size).round
end
