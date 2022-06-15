class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:edit, :update, :destroy]

  def new
    @activity = Activity.new
    @event = Event.find(current_user.event_id)
  end

  def create
    par = activity_params
    @activity = Activity.new(activity_params)
    @activity.event = Event.find(current_user.event_id)
    if @activity.save!
      redirect_back
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
    @new_plan = Plan.new
    if params[:query].present?
      sql_query = <<~SQL
        activities.name @@ :query
        OR activities.address @@ :query
        OR activities.details @@ :query
      SQL
      @activities = @activities.where(sql_query, query: "%#{params[:query]}%")
    else
      @activities = Activity.where(category: "eat")
    end
  end

  def play
    @event = Event.find(current_user.event_id)
    @activities = Activity.where(category: "play")
    if params[:query].present?
      sql_query = <<~SQL
        activities.name @@ :query
        OR activities.address @@ :query
        OR activities.details @@ :query
      SQL
      @activities = @activities.where(sql_query, query: "%#{params[:query]}%")
    else
      @activities = Activity.where(category: "play")
    end
  end

  def stay
    @event = Event.find(current_user.event_id)
    @activities = Activity.where(category: "stay")
    @new_plan = Plan.new
    if params[:query].present?
      sql_query = <<~SQL
        activities.name @@ :query
        OR activities.address @@ :query
        OR activities.details @@ :query
      SQL
      @activities = @activities.where(sql_query, query: "%#{params[:query]}%")
    else
      @activities = Activity.where(category: "stay")
    end
  end

  def go
    @activities = Activity.all
    @planned_activities = Activity.where(planned:true)
    @event = Event.find(current_user.event_id)
    @new_go = Activity.new
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        # Uncomment the above line if you want each of your markers to display a info window when clicked
        # (you will also need to create the partial "/flats/map_box")
      }
    end
  end

  def plan
    @event = Event.find(params[:event_id])
    @activities = Activity.where(booked: true)
    @activities.order(time: :asc)
  end

  def destroy
    @activity.destroy
    redirect_to url_from(params[:redirect_url]) || root_url

  end

  private

  def activity_params
    params.require(:activity).permit(:date, :start_time, :end_time, :category, :address, :name, :booked, :saved, :details, :event_id, :redirect_url)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
