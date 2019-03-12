class Admin::ProductPointsController < Admin::MasterController

  before_action :set_product, only: [:index, :create, :new]
  before_action :set_product_point, only: [:edit, :update, :destroy]

  def index
    @product_points = @product.product_points
  end

  def new
    @product_point = @product.product_points.new
  end

  def create
    @product_point = @product.product_points.new product_point_params
    @product_point.save
  end

  def edit
  end

  def update
    @product_point.update product_point_params
  end

  def destroy
    @product_point.destroy
  end

  private
  def product_point_params
    params.require(:product_point).permit :text, :order
  end

  def set_product
    @product = Product.find_by id: params[:product_id]
  end

  def set_product_point
    @product_point = ProductPoint.find_by id: params[:id]
  end
end
