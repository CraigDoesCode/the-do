class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to event_path(@event)
  end

  def edit
    @event.update
  end

  def update
    @event.update(event_params2)
    redirect_to event_path(@event)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name,:start_date, :end_date, :location)
  end

  def event_params2
    params.require(:event).permit(:start_date, :end_date, :location)
  end
end
