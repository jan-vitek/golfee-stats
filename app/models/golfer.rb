class Golfer < ActiveRecord::Base
  attr_accessible :name, :temp_points
  
  has_many :assocs
  
  def tips_count(round)
    self.assocs.where("rond_id = ?", round).size
  end
end
