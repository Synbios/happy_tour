class Admin::LocationsController < Admin::MasterController

  before_action :set_location, only: [:edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new location_params
    @location.save
  end

  def edit
  end

  def update
    @location.update location_params
  end

  def destroy
    @location.destroy
  end

  private
  def location_params
    params.require(:location).permit :chinese, :english, :description
  end

  def set_location
    @location = Location.find_by id: params[:id]
  end
end
