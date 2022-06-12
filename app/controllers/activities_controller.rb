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
    @event = Event.find(current_user.event_id)
    @activities = Activity.where(category: "eat")
  end

  def play
    @event = Event.find(current_user.event_id)
    @activities = Activity.where(category: "play")
  end

  def stay
    @event = Event.find(current_user.event_id)
    @activities = Activity.where(category: "stay")
  end

  def go
    @activities = Activity.where.not(latitude: nil, longitude: nil)

    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
      }
  end

  def plan
    @event = Event.find(params[:event_id])
    @activities = Activity.where(booked: true)
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
