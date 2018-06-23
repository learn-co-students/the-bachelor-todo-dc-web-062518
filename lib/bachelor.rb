require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    contestant.each do |key, value|
      if value == "Winner"
        return contestant["name"].split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  town = 0
  data.each do |season, contestant|
    contestant.each do |hash|
      if hash["hometown"] == hometown
        town +=1
      end
    end
  end
  town
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  number_of_contestants = 0
  data.each do |season_year, contestant|
    if season_year == season
      contestant.each do |hash|
        total_age = total_age + hash["age"].to_i
        number_of_contestants += 1
        end
      end
    end
      average = total_age.to_f/ number_of_contestants
      average.round
  end
