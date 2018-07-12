data = {
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}

def get_first_name_of_season_winner(data,season)
  data.each do |this_season,contestant_array|
    if this_season == season
      contestant_array.each_with_index do |contestant,index|
        contestant.each do |key,value|
          if value == "Winner"
            a = data[this_season][index]["name"]
            a = a.split(' ')
            return a[0]
          end
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |this_season,contestant_array|
    contestant_array.each_with_index do |contestant,index|
      contestant.each do |key,value|
        if value == occupation
          return data[this_season][index]["name"]
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |this_season,contestant_array|
    contestant_array.each do |contestant|
      contestant.each do |key,value|
        if value == hometown
          count+=1
        end
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |this_season,contestant_array|
    contestant_array.each_with_index do |contestant,index|
      contestant.each do |key,value|
        if value == hometown
          return data[this_season][index]["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  sum_of_ages = 0
  data.each do |this_season,contestant_array|
    contestant_array.each do |contestant|
      contestant.each do |key,value|
        if key == "age"
          sum_of_ages+= value.to_i
          counter+=1
        end
      end
    end
  end
  average_age = sum_of_ages/counter
  average_age.round
end
