require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # holiday_hash =
   #{
    # :winter => {
     #  :christmas => ["Lights", "Wreath"],
      # :new_years => ["Party Hats"]
    # },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season] = { holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
 holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |keys, values|
  puts "#{keys.capitalize}:"
  values.each do |data, attribute|
    attJoined = attribute.join(", ")
    dataSplit = data.to_s.split("_")
      dataSplit.each do |x|
       x.capitalize!
      end
    holiday = dataSplit.join(" ")
    puts "  #{holiday}: #{attJoined}"
    end
end

def all_holidays_with_bbq(holiday_hash)
  array=[]
  holiday_hash.each do |key, value|
  value.collect do |data, attribute|
    if attribute.include?("BBQ")
      array << data
    end
  end
end
array
end
end







