def get_first_name_of_season_winner(data, season)
  new_array = []
  data.each do |season_number, array_of_contestant_hashes|
    if season_number == season
      array_of_contestant_hashes.each do |contestant_hash|
        contestant_hash.each do |key, value|
          if key == "status" && value == "Winner"
            new_array = contestant_hash["name"].split(" ")
          end
        end
      end
    end
  end
  new_array[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season_number, array_of_contestant_hashes|
    array_of_contestant_hashes.each do |contestant_hash|
      contestant_hash.each do |key, value|
        if key == "occupation" && value == occupation
          name = contestant_hash["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_number, array_of_contestant_hashes|
    array_of_contestant_hashes.each do |contestant_hash|
      contestant_hash.each do |key, value|
        if key == "hometown" && value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |season_number, array_of_contestant_hashes|
    array_of_contestant_hashes.each do |contestant_hash|
      contestant_hash.each do |key, value|
        if key == "hometown" && value == hometown
          occupation = contestant_hash["occupation"]
        end
      end
      break if occupation != ""
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  sum_of_ages = 0
  sum_of_contestants = 0
  data.each do |season_number, array_of_contestant_hashes|
    if season_number == season
      array_of_contestant_hashes.each do |contestant_hash|
        contestant_hash.each do |key, value|
          sum_of_ages = sum_of_ages + contestant_hash["age"].to_i
          sum_of_contestants += 1
        end
      end
    end
  end
  var = sum_of_ages.to_f/sum_of_contestants
  var.round
end
