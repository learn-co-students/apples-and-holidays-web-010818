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

    holiday_supplies.collect do |season, holiday|
      if season == :winter
        holiday.collect do |day, item|
          item << supply
        end
      end
    end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)

    holiday_supplies[:spring].collect do |day, item|
        item << supply
        end

  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)


      holiday_supplies[season][holiday_name]=supply_array

      holiday_supplies

end

def all_winter_holiday_supplies(holiday_hash)
 new_arr = []


  holiday_supplies[:winter].each do |day, item|
        new_arr << item
    end


new_arr.flatten
#using .collect would return values of nil for every season
#that is not :winter
#.each has no return value and thus i was able to manipulate
  #the information i needed.
end

def all_supplies_in_holidays(holiday_hash)

    holiday_supplies.each do |season,days|
    puts  "#{season.to_s.capitalize!}:"
     days.each do |days, items|
       puts "  #{days.to_s.capitalize.split("_").collect {|str|
          str.capitalize}.join(" ")}: #{items.join(", ")}"
     end
   end

end

def all_holidays_with_bbq(holiday_hash)


new_arr=[]

  holiday_supplies.each do |season, holiday|
    holiday.each do |day, item|
      if item.include?("BBQ")
        new_arr << day
      end
    end
  end
  new_arr
end
