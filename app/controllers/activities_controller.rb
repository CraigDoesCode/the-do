class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:edit, :update, :destroy]
  def create
    @activity = Activity.new(activity_params)
    @activity.save
  end

  def edit
  end

  def update
    @activity.update(activity_params)
  end

  def eat
    @event = Event.find(params[:event_id])
    @activities = Activity.where(type: "eat")
  end

  def play
    @event = Event.find(params[:event_id])
    @activities = Activity.where(type: "play")
  end

  def stay
    @activities = Activity.where(type: "stay")
  end

  def go
    @activities = Activity.where(type: "go")
  end

  def destroy
    @activity.destroy
  end

  private

  def activity_params
    params.require(:activity).permit(:date, :start_time, :end_time, :type, :address, :name, :booked, :saved, :details, :event_id)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
