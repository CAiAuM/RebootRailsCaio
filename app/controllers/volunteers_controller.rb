class VolunteersController < ApplicationController

  def index
    @volunteers = Volunteer.all
  end

  def show
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new
    @volunteer.save
  end

end
