require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |h|
    if h["status"] == "Winner"
      return h["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, arr|
    arr.each do |h| #binding.pry
      if h["occupation"] == occupation
        return h["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, arr|
    arr.each do |h| #binding.pry
      if h["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, arr|
    arr.each do |h| #binding.pry
      if h["hometown"] == hometown
        return h["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  ages = 0
  data[season].each do |h| #binding.pry
    h.each do |k,v|
      counter += 1
      ages += h["age"].to_f
    end
  end
  val = (ages/counter).round
  return val
end
