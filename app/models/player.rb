class Player < ActiveRecord::Base
  attr_accessible :name, :points
  
  has_many :assocs
  has_many :tips, :through => :assocs
  
  def temp_score
    gs=self.tips.find_by_rond_id(Rond.last).golfers
    temp=self.points
    
    gs.each do |g|
      if g.temp_points != nil
       temp += g.temp_points
      end
    end
    
    temp
  end
end
