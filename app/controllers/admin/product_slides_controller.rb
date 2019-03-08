class Admin::ProductSlidesController < Admin::MasterController

  before_action :set_product, only: [:index, :create, :new]
  before_action :set_product_slide, only: [:edit, :update, :destroy]

  def index
    @product_slides = @product.product_slides
  end

  def new
    @product_slide = @product.product_slides.new
  end

  def create
    @product_slide = @product.product_slides.new product_slide_params
    @product_slide.save
  end

  def edit
  end

  def update
    @product_slide.update product_slide_params
  end

  def destroy
    @product_slide.destroy
  end

  private
  def product_slide_params
    params.require(:product_slide).permit :image, :order
  end

  def set_product
    @product = Product.find_by id: params[:product_id]
  end

  def set_product_slide
    @product_slide = ProductSlide.find_by id: params[:id]
  end
end
