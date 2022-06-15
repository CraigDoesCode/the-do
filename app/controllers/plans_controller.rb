class PlansController < ApplicationController
  before_action :set_event, only: [:go, :index, :new, :create, :edit]
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
    @plan.activity_id = @activity.id if @plan.activity_id == nil

    if @plan.save
      if @plan.activity.category == "go"
        redirect_to go_event_plans_path
      else
        redirect_to event_plans_path
      end
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
    redirect_to url_from(params[:redirect_url]) || root_url
  end

  def go
    @event = Event.find(params[:event_id])
    @plans = @event.plans.order(start_time: :asc)
    @new_plan = Plan.new
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :start_time, :end_time, :activity_id)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
  def set_plan
    @plan = Plan.find(params[:id])
  end
end
