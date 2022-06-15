class GuestsController < ApplicationController
  before_action :set_event, only: [:index, :new, :create, :edit]
  before_action :set_guest, only: [:edit, :update, :destroy]

  def index
    # @bestie = Guest.find_by(name: "#{@event.name}[Bestie]")
    # if @bestie.nil?
    #   @bestie = Guest.create!(name: "#{@event.name}[Bestie]", event_id: params[:event_id])
    # end
    @guests = Guest.where(event_id: params[:event_id])
    # @guests = @all_guests.reject { |guest| guest == @bestie }
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.event_id = @event.id
    if @guest.save
      redirect_to event_guests_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @guest.update(guest_params)
      flash[:notice] = "Guest details updated successfully"
      redirect_to event_guests_path
    else
      flash.now[:alert] = "Guest details update failed"
      render :edit
    end
  end

  def destroy
    @event_id = @guest.event_id
    @guest.destroy
    redirect_to event_guests_path(@event_id), status: :see_other
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email, :phone_number, :attending, :paid, :photo)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end
end
