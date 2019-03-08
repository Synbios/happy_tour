class Admin::ProductOptionsController < Admin::MasterController

  before_action :set_product, only: [:index, :create, :new]
  before_action :set_product_option, only: [:edit, :update, :destroy]

  def index
    @product_options = @product.product_options
  end

  def new
    @product_option = @product.product_options.new
  end

  def create
    @product_option = @product.product_options.new product_option_params
    @product_option.save
  end

  def edit
  end

  def update
    @product_option.update product_option_params
  end

  def destroy
    @product_option.destroy
  end

  private
  def product_option_params
    params.require(:product_option).permit :name, :description, :line1, :line2, :line3, :line4, :line5, :line6, :line7
  end

  def set_product
    @product = Product.find_by id: params[:product_id]
  end

  def set_product_option
    @product_option = ProductOption.find_by id: params[:id]
  end
end
