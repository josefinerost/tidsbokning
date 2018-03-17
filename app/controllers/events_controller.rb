class EventsController < ApplicationController
  before_action :require_login, except: :index

  def index
    @events = Event.all
  end

  def new
    @event = Event.new(start: 1.hours.from_now, stop: 2.hours.from_now)
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to(events_path)
    else
      render(:new, status: 422)
    end
  end

  def edit
    @event = current_user.events.find(params[:id])
  end

  def update
    @event = current_user.events.find(params[:id])
    if @event.update(event_params)
      redirect_to(events_path)
    else
      render(:edit, status: 422)
    end
  end

  def destroy
    event = current_user.events.find(params[:id])
    event.destroy!
    redirect_to(events_path, notice: 'Eventet togs bort.')
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start, :stop)
  end
end
