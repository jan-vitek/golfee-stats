class Association < ActiveRecord::Base
  attr_accessible :golfer_id, :player_id, :tip_id
  
  belongs_to :golfer
  belongs_to :player
  belongs_to :tip 
  
end
