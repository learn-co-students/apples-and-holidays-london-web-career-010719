require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas].push(supply)
  holiday_supplies[:winter][:new_years].push(supply)
  holiday_supplies
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_supplies[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  a = holiday_supplies[:winter][:christmas]
  b = holiday_supplies[:winter][:new_years]
  a.concat(b)
end

def all_supplies_in_holidays(holiday_hash)
  a = holiday_supplies[:winter][:christmas]
  b = holiday_supplies[:winter][:new_years]
  c = holiday_supplies[:summer][:fourth_of_july]
  d = holiday_supplies[:fall][:thanksgiving]
  e = holiday_supplies[:spring][:memorial_day]

  f = a.concat(b)
  g = f.concat(c)
  h = g.concat(d)
  i = h.concat(e)
  i
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
