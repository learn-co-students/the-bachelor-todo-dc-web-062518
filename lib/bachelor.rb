require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
   arr = data[season][0]["name"].split(" ")
   arr[0]
end

def get_contestant_name(data, occupation)
  # code here
  ret = ""
  data.each do |season, array|
    array.each do |dic|
      if occupation == dic["occupation"]
        ret =  dic["name"]
      end
    end
  end
  
  ret
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, array|
    array.each do |dic|
      if hometown == dic["hometown"]
        count += 1
      end
    end
  end
  count 
end

def get_occupation(data, hometown)
  # code here
  ret = ""
  data.each do |season, array|
    array.each do |dic|
      if hometown == dic["hometown"]
        return  dic["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  #code here
  count = 0
  age_tot = 0
  data[season].each do |item|
    age_tot += item["age"].to_i
    count += 1
  end
  #binding.pry
  result = (age_tot.to_f/count.to_f).round
end
