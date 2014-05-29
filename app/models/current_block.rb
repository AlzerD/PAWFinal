class CurrentBlock < ActiveRecord::Base
  attr_accessible :block
  belongs_to :match
end
