class PlansController < ApplicationController

  def go
    @event = Event.find(current_user.event_id)
    @plans = @event.plans
  end
end
