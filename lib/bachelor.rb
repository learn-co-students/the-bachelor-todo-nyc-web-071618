def get_first_name_of_season_winner(data, season)
     # code here	   # code here
    winner = []


    data[season].collect do |x|

      if x["status"] == "Winner"

        winner << x["name"].split(' ')[0]

      end

    end

    winner[0]

   end



def get_contestant_name(data, occupation)
  person = []

  data.collect do |season, array|

      array.collect do |x|

      if x["occupation"] == occupation

        person << x["name"]

      end
  end
  end

  person.join()

end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.collect do |season, array|
    array.collect do |x|
    if x["hometown"] == hometown
      counter += 1
    end
  end
end
  counter

end

def get_occupation(data, hometown)
    return_occupation = []
    data.collect do |season, array|
      array.collect do |x|

      if x["hometown"] == hometown
        return_occupation << x["occupation"]
      end
    end
  end
   return_occupation[0]
end

def get_average_age_for_season(data, season)
    ages = []
    data[season].collect do |x|

    ages << x["age"].to_i
# to_i will return the characters we called in age as an integer
# will push it into ages which we made an empty array
    end
   (ages.reduce(:+).to_f / ages.size).round
  # reduce will add all the elements in the age array
  # to f allows the numbers to be a floating point aka 0.0 instead of just
  # now we will divide that number by the number of elements in ages
  # We will then round that nubmer  
end
