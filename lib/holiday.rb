require 'pry'

holiday_supplies = {
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

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each {|k,v| v << supply}
end
 

def add_supply_to_memorial_day(holiday_supplies, supply)
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies[:winter].collect {|k,v| v}.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each {|season,h1| puts "#{season.capitalize}:"
    h1.each {|holiday_name,supply_array| puts "  #{holiday_name.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{supply_array.join(", ")}"
  }}
  
end

def all_holidays_with_bbq(holiday_supplies)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
    holiday_supplies.each {|season,h1|
     h1.each {|holiday_name,supply_array|
      if supply_array.include?("BBQ")
        holidays_with_bbq << holiday_name
      end
      }
    }
  holidays_with_bbq
end


