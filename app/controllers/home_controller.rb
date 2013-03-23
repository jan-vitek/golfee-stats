class HomeController < ApplicationController

  def _index
    @players = Player.order("points").find(:all, :conditions => "points IS NOT NULL")
  end
  
  def update_many_golfers
    params['golfer'].keys.each do |id|
       @golfer = Golfer.find(id.to_i)
       @golfer.update_attributes(params['golfer'][id])
    end
    redirect_to :controller => "home"
  end
end
