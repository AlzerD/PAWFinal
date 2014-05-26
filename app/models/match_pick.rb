class MatchPick < ActiveRecord::Base
  attr_accessible :userID, :matchID, :userPick, :result, :points, :closed, :blockID
  belongs_to :user, :foreign_key => "userID", :class_name => "User"
  belongs_to :match, :foreign_key => "matchID", :class_name => "Match"
end
