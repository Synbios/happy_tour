class Admin::ProductsController < Admin::MasterController

  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    @product.save
  end

  def edit
  end

  def update
    @product.update product_params
  end

  def destroy
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit :category, :name, :description, location_ids: []
  end

  def set_product
    @product = Product.find_by id: params[:id]
  end
end
