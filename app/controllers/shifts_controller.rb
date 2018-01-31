class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    if @shift.save
      redirect_to(shifts_path)
    else
      render(:new, status: 422)
    end
  end

  def edit
    @shift = Shift.find(params[:id])
  end

  private

  def shift_params
    params.require(:shift).permit(:weekday, :start, :stop)
  end
end
