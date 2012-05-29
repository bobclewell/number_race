class RacesController < ApplicationController

  def show

  end

  # GET /races/new
  def new
    @race = Race.new
  end

  # POST /races
  def create
    @race = Race.new(params[:race])

    if @race.save
      Resque.enqueue(RandomNumberGenerator, @race.id)
      redirect_to race_path(@race.id)
    else
      render action: "new"
    end
  end

end
