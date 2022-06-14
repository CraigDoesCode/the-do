class PlansController < ApplicationController

  def go
    @plans = Event.find(current_user.event_id).plans
  end
end
