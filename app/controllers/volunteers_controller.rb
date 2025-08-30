class VolunteersController < ApplicationController

  def index
    @volunteers = Volunteer.all
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    @volunteer.save
  end

  # def set_volunteer
  #   @volunteer = Volunteer.find(params[:id])
  # end

  def volunteer_params
    params.require(:volunteer).permit(:name, :phone_number)
  end
end
