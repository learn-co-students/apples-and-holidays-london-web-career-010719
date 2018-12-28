require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = [];
  holiday_hash[:winter].each do |key, array|
    supplies << array
  end
  supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts season.to_s.capitalize! + ":"
    data.each do |holiday, supply|
      holiday = holiday.to_s.split("_")
      holiday.each do |text|
        text.capitalize!
      end
      puts "  " + holiday.join(" ") + ": " + supply.join(", ")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_arr = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supply|
      if supply.join(" ").include?("BBQ")
        bbq_arr << holiday
      end
    end  
  end
    bbq_arr
end








