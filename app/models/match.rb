class Match < ActiveRecord::Base
  attr_accessible :block, :round, :date, :day, :time, :venue, :team1, :team2, :played, :result, :resultString
  has_many :match_picks
end
