def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    if hash["status"].downcase == "winner"
      return hash["name"].split(' ').first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, girl|
    girl.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, girl|
    girl.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, girl|
    girl.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  years = 0
  count = 0
  data[season].each do |girl|
    num = girl["age"]
    years += num.to_i
    count += 1
  end
  (years/count.to_f).round(0)
end
