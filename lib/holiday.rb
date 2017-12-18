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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, arr|
    arr.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  arr = []
  holiday_hash[:winter].each do |holiday, supplies_arr|
    supplies_arr.each do |supply|
      arr.push(supply)
    end
  end
  arr
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_hsh|
    season_str = season[0].upcase + season[1..season.length]
    puts "#{season_str}:"
    holidays_hsh.each do |holiday, supplies|
      holiday_arr = holiday.to_s.split('_')
      holiday_arr2 = []
      holiday_arr.each do |word|
        holiday_arr2.push(word.capitalize)
      end
      holiday_str = holiday_arr2.join(' ')
      supplies_str = supplies.join(', ')
      puts "  #{holiday_str}: #{supplies_str}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  arr =[]
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include? ("BBQ")
        arr.push(holiday)
      end
    end
  end
  arr
end
