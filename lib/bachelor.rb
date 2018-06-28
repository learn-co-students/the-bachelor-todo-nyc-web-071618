def get_first_name_of_season_winner(data, season)
#data is the info we scraped...... season is the key
#quicker to go into first level by entering season key specific to season we are looking for
  data[season].collect do |contestants|
    #.each gives us each elements of our array contestants
# ****** each contestant is its own hash  *****
    if contestants["status"] == "Winner"
# if in the contestant hash is there a key "status" == string "Winner
      winner = contestants["name"].split
#varible winner = hash{contestants} key["name"] and split the value
      winner = winner.first
#above varible winner which is a name was split.
#now we are giving winner varible the value of 1st returning 1st name
      return winner
    end
  end
end


  def get_contestant_name(data, occupation)
#data is the info we scraped... occupation is a string
  data.collect do |season, contestants|
#data.each gives us elements of hash..
#we save elemnts in two variables season & contestants
    contestants.collect do |contestant_info|
#collect elemnts in contestants array containing hash .. varible contestant_info
      if contestant_info["occupation"] == occupation
# if inside contestant_info key[occupation] == to string argument above
        return contestant_info["name"]
        #return {contestant_info}["name"] key
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
  i =0
  data.collect do |season, contestants|
    contestants.collect do |contestant_info|
      if contestant_info["hometown"] == hometown
        i += 1
      end
    end
  end
  return i
end

  def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  total_age = 0
  counter = 0
  data[season].each do |contestants|
    # need to change to int, all data stored as string
    total_age += (contestants["age"]).to_i
    counter += 1
  end
average = total_age.to_f/ counter
average.round
end
