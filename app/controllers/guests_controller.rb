class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def new
    @event = Event.find(params[:event_id])
    @guest = Guest.new
  end

  def create
    @event = Event.find(params[:event_id])
    @guest = Guest.new(guest_params)
    @guest.event_id = @event.id
    if @guest.save
      redirect_to guests_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @guest.update(guest_params)
    redirect_to guests_path
  end

  def destroy
    Guest.destroy(params[:id])
    redirect_to guests_path, status: :see_other
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email, :phone_number, :attending, :paid)
  end
end
