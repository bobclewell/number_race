class Race < ActiveRecord::Base
  attr_accessible :blue_team, :red_team, :winner
  has_many :numbers

end