class PlansController < ApplicationController
  before_action :set_event, only: [:index, :new, :create, :edit]
  before_action :set_plan, only: [:edit, :update, :destroy]

  def index
    @event = Event.find(params[:event_id])
    @plans = @event.plans.order(start_time: :asc)
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.event_id = @event.id
    @plan.activity_id = @activity.id
    if @plan.save
      redirect_to event_plan_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @plan.update(plan_params)
      flash[:notice] = "Booking details updated successfully"
      redirect_to event_guests_path
    else
      flash.now[:alert] = "Booking details update failed"
      render :edit
    end
  end

  def destroy
    @event_id = @plan.event_id
    @plan.destroy
    redirect_to event_guests_path(@event_id), status: :see_other
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :start_time, :end_time)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
