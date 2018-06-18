def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
      contestant.each do |k,v|
        if v == "Winner"
          full_name = contestant["name"]
          return full_name.split(' ').first
        end 
      end
    end
end

def get_contestant_name(data, occupation)
 person = nil
  data.each do |hash_season, contestants_array|
    contestants_array.find do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
  contestants = []
  data.each do |hash_season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        contestants << hash_season
      end
    end
  end
  contestants.length

end

def get_occupation(data, hometown)
 data.each do |season, array|
    array.each do |hash|
      hash.each do |k,v|
        if v == hometown
         return hash["occupation"]
       end
    end
   end
 end
end

def get_average_age_for_season(data, season)
   contestant_ages = data[season].collect do |contestant|
    contestant["age"].to_i
  end

  summed_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
  contestant_count =  contestant_ages.count.to_f
  (summed_ages/contestant_count).round
end
