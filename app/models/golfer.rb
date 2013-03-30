class Golfer < ActiveRecord::Base
  attr_accessible :name, :temp_points
  
  has_many :assocs
  
  def tips_count(rond)
    self.assocs.where("rond_id = ?", rond).size
  end
end
