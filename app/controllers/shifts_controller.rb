class ShiftsController < ApplicationController
  def new
    @shift = Shift.new
    @volunteer = Volunteer.find(params[:volunteer_id])
  end

  def create
    @shift = Shift.new(shift_params)
    @volunteer = Volunteer.find(params[:volunteer_id])
    @shift.volunteer = @volunteer
    if @shift.save
      redirect_to volunteer_path(@volunteer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def shift_params
    params.require(:shift).permit(:feedback, :event_id)
  end
end
