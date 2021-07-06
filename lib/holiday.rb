require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holder = nil
holiday_hash.each do |key, value|
  if key == :winter
    value.map do |key, value|
      value.push(supply)
    end
  end
end
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.map do |key, value|
    if key == :spring
        value.map do |items, value|
          value.push(supply)
        end
      end
    end
  holiday_hash
  end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.map do |key, value|
    if key == season
      #value.map do |holiday, supply|
      holiday_hash[season][holiday_name] = supply_array
      #  season = {:holiday_name => supply_array}
        #add set of supplies to new holiday
      end
    #end
  end
  holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
   supply = []
   #puts holiday_hash[:winter][:christmas]
   holiday_hash.map do |seasons, holidays|
     if seasons == :winter
       holidays.map do |holidays, supplies|
         supplies.map do |supplies_inside|
           supply.push(supplies_inside)
         end
      end
     end
   end
  supply
#  binding.pry
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday_var5 = ""
    holiday.each do |holiday, supply|
      holiday_var3 = []
      holiday_var1 = "#{holiday}"
      if holiday_var1.include?("_")
        holiday_var2 = holiday_var1.split("_")
        holiday_var2.map do |word|
          holiday_var3.push(word.capitalize)
        end
        holiday_var4 = holiday_var3.join(" ")
        puts "  #{holiday_var4}: #{supply.join(", ")}"
      else
        puts "  #{holiday_var1.capitalize}: #{supply.join(", ")}"
      end
    end
  end
        # holiday_var5 = holiday_var4.join(" ")
        # binding.pry
        # puts "  #{holiday_var2.capitalize}: #{[supply].join(", ")}"
end

#cal_name.sub!(’’, ’ ')

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
array = []
holiday_hash.each do |season, holiday|
#  holiday_holder = holiday
  holiday.each do |holiday, supply|
    if supply.include?("BBQ")
      array.push(holiday)
    end
  end
end
array
end
