class Tip < ActiveRecord::Base
  attr_accessible :rond_id
  
  has_many :assocs
  has_many :golfers, :through => :assocs
  has_many :players, :through => :assocs
  belongs_to :rond
end
