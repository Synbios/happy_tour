class Admin::LocationSlidesController < Admin::MasterController

  before_action :set_location, only: [:index, :create, :new]
  before_action :set_location_slide, only: [:edit, :update, :destroy]

  def index
    @location_slides = @location.location_slides
  end

  def new
    @location_slide = @location.location_slides.new
  end

  def create
    @location_slide = @location.location_slides.new location_slide_params
    @location_slide.save
  end

  def edit
  end

  def update
    @location_slide.update location_slide_params
  end

  def destroy
    @location_slide.destroy
  end

  private
  def location_slide_params
    params.require(:location_slide).permit :image, :order
  end

  def set_location
    @location = Location.find_by id: params[:location_id]
  end

  def set_location_slide
    @location_slide = LocationSlide.find_by id: params[:id]
  end
end
