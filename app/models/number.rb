class Number < ActiveRecord::Base
  attr_accessible :active_race, :number, :race_id
  belongs_to :race
  
end
