class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new(start: 1.hours.from_now, stop: 2.hours.from_now)
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to(events_path)
    else
      render(:new, status: 422)
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start, :stop)
  end
end
