class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update, :destroy, :plan]

  def new
    @event = Event.find(params[:format])
  end

  def show
  end

  def create
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def edit
  end

  def update
    @event.update(event_params)
    # @bestie = Guest.new(name: @event.name, event_id: current_user.event_id)
    # @bestie.save!
    redirect_to event_path(@event)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :location)
  end

end
