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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, season_holidays_hash|
    if season == :winter
      season_holidays_hash.each do |attribute, data|
        if attribute == :christmas || :new_years
           data << supply
          end
        end
      end
    end
  return holiday_hash 
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash.each do |season, season_holidays_hash|
    if season == :spring
      season_holidays_hash.each do |attribute, data|
        if attribute == :memorial_day
           data << supply
          end
        end
      end
    end
  return holiday_hash   
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  season_key_holidayname_value = {season => holiday_name}
  holidayname_key_supplyarray_value = {holiday_name => supply_array}
  season_holiday_name_hash = season_key_holidayname_value.to_hash
  holidayname_supplyarray = holidayname_key_supplyarray_value.to_hash
  holiday_hash.each do |season, season_holidays_hash|
    if season == :spring
      season_holidays_hash.each do |attribute, data|
        if attribute == :memorial_day
           data << supply
          end
        end
      end
    end
  return holiday_hash   
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash [:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_holidays_hash|
    puts "#{season.capitalize}:" 
    season_holidays_hash.each do |attribute, data|
      puts "#{attribute.capitalize}: #{data.join(,}" 
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_barbecue = []
  holiday_hash.each do |season, season_holidays_hash|
	  season_holidays_hash.each do |attribute, data|
		  if data.include?("BBQ") 
			  holidays_with_barbecue << attribute
			end
		end
	end	
  return holidays_with_barbecue
end






