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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, stuff|
        stuff << supply
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, data|
    if season == :spring
      data.each do |holiday, stuff|
        stuff << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies_array = []
  holiday_hash.collect do |season, data|
    if season == :winter
      data.collect do |holiday, supplies|
        supplies_array << supplies
      end
    end
  end

  supplies_array.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, supplies|
      string_holiday = holiday.to_s
      if string_holiday.count("_") == 0
        puts "  #{string_holiday.capitalize}: #{supplies.join(", ")}"
      elsif string_holiday.count("_") > 0
        split_holiday = string_holiday.split("_")
        capitalized_holiday = []
        split_holiday.each do |x|
          capitalized_holiday << x.capitalize
        end
        puts "  #{capitalized_holiday.join(" ")}: #{supplies.join(", ")}"
      end
      # supplies.each do |supply|
      #   if supplies.index_of(supply) != sup
      #     puts "  #{supply}"
      # end
    end
  end
end

# all_supplies_in_holidays(holiday_supplies)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []
  holiday_hash.collect do |season, data|
    data.collect do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_array << holiday
      end
    end
  end

  holiday_array
end


#attemp1
# season_array = []
# holiday_array = []
# supplies_array = []
#
# holiday_hash.each do |season, data|
#   season_array << season.to_s.capitalize + ":"
#   #binding.pry
#   data.each do |holiday, supplies|
#     holiday.to_s.each do |x|
#       split = x.split("_")
#       if split.instance_of?(String)
#         holiday_array << split.capitalize
#       elsif split.instance_of?(Array)
#         holiday_array << split.capitalize.join
#       end
#     end
#   end
#   binding.pry
# end

#attempt2
# season_array = []
# holiday_array = []
# supplies_array = []
#
#
# holiday_hash.each do |season, data|
#   season_array << season.to_s.capitalize + ":"
#   data.each do |holiday, supplies|
#     holiday_array << holiday
#     supplies_array << supplies
#   end
# end
