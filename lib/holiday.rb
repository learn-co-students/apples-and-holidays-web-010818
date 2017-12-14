require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  holiday_hash[:"summer"][:"fourth_of_july"][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:"winter"][:"christmas"].push(supply)
holiday_hash[:"winter"][:"new_years"].push(supply)

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:"spring"][:"memorial_day"].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  arr = holiday_hash[:"winter"].values
  arr[0].concat(arr[1])


end

# def all_supplies_in_holidays(holiday_hash)
#   # iterate through holiday_hash and print items such that your readout resembles:
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.
#   final  = ""
# holiday_hash.each do |season, holiday|
#   final += "#{season.capitalize}:" "\n"
#   holiday.each do |supplies, x|
#     final += "#{supplies}: #{x.join(",")}" "\n"
#   end
# end
# # puts ("Winter:")
#   puts final
#
#
# end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  empty = []

  holiday_hash.each do |season, holiday|

    holiday.each do |supplies, x|
      if x.include? ("BBQ")
        empty.push(supplies)
      end
    end

  end
  empty
  end
