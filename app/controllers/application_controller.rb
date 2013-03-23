class ApplicationController < ActionController::Base
  layout :resolve_layout
  protect_from_forgery
  
   def resolve_layout
        "application"
  end
end
