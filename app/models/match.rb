class Match < ActiveRecord::Base
  attr_accessible :block, :round, :date, :day, :time, :venue, :team1, :team2, :played, :result, :resultString
  has_many :match_picks
  has_many :current_blocks
  after_create :set_expiry_timer
  
    # register the timer
  def set_expiry_timer
    delay(:run_at => Proc.new{5.minutes.from_now}).assign_picks
  end  

  
  def assign_picks
    @current_blocks = CurrentBlock.where(:id => 1)
    @users = User.where(:curr_block != @current_blocks[0].block)
    @matches = Match.where(:block => @current_blocks[0].block)    
         
    @users.each do |user|
      @matches.each do |match|
        MatchPick.create!(:userID => user.id, :matchID => match.id, :blockID => @current_blocks[0].block, :userPick => (0..2).to_a.sample)
      end
    end
      # Increase the current block for application
       CurrentBlock.where(:id => 1).each do |cb|
        cb.update_attribute(:block, cb.block + 1)
     end      
  end  
  
end
