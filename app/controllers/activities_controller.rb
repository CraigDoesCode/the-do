class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:edit, :update, :destroy]
  def new
    @activity = Activity.new
    @event = Event.find(current_user.event_id)
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.event = Event.find(current_user.event_id)
    if @activity.save!
      redirect_to eat_event_activities_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
  end

  def update
    @activity.update(current_user.event_id)
  end

  def eat
<<<<<<< HEAD
    @event = Event.find(current_user.event_id)
    @activities = Activity.where(type: "eat")
  end

  def play
    @event = Event.find(current_user.event_id)
    @activities = Activity.where(type: "play")
  end

  def stay
    @event = Event.find(current_user.event_id)
    @activities = Activity.where(type: "stay")
=======
    @event = Event.find(params[:event_id])
    @activities = Activity.where(category: "eat")
  end

  def play
    @activities = Activity.where(category: "play")
  end

  def stay
    @activities = Activity.where(category: "stay")
>>>>>>> 1616dbc2de3eae9e0d3db4ee4f1a8117a1c6fd58
  end

  def go
    @activities = Activity.where(category: "go")
  end

  def plan
    @event = Event.find(params[:event_id])
    @activities = Activity.where(booked: true, event_id: current_user.event_id)
    @activities.order(time: :asc)
  end

  def destroy
    @activity.destroy
  end

  private

  def activity_params
    params.require(:activity).permit(:date, :start_time, :end_time, :category, :address, :name, :booked, :saved, :details, :event_id)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
