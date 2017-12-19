require 'pry'

=begin

add_supply_to_memorial_day({
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
 }, "balloons")

=end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season_name, season_values|
    season_values.each do |holiday_name, holiday_values|
      if holiday_name == :memorial_day
        holiday_values << supply

      end
    end
  end
end


def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash.each do |season_name, season_values|
    season_values.each do |holiday_name, holiday_values|
      if holiday_name == :christmas || holiday_name == :new_years
        holiday_values << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |seas, season_values|
    if seas == season
      season_values[holiday_name] = supply_array
    end
  end
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
array = []

  holiday_hash.each do |ssn, ssn_values|
    if ssn === :winter
      ssn_values. each do | hldy, hldy_values|
        hldy_values.each do |vals|
          array << vals
        end
      end
    end
  end
  array
end

=begin

add_supply_to_memorial_day({
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
 }, "balloons")

=end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

array = []
puts_array = []

  holiday_hash.each do |seas_nam, seas_vals|
      array << seas_nam.to_s.capitalize + ":"
      seas_vals.each do |hold_nam, hold_vals|

        array << hold_nam.to_s.gsub("_", " ").gsub(/\w+/, &:capitalize) + ":"

        hold_vals.each do |itms|
          array << itms

      end
    end
  end


  puts array[0]
  puts "  #{array[1]} #{array[2]}, #{array[3]}"
  puts "  #{array[4]} #{array[5]}"
  puts array[6]
  puts "  #{array[7]} #{array[8]}, #{array[9]}"
  puts array[10]
  puts "  #{array[11]} #{array[12]}"
  puts array[13]
  puts "  #{array[14]} #{array[15]}"

end

=begin
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
=end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  array = []

  holiday_hash.each do |ssn_name, ssn_vals|
    ssn_vals.each do |hol_name, hol_vals|
      if hol_name == :fourth_of_july || hol_name == :memorial_day
        array << hol_name
      end
    end
  end
  array
end
