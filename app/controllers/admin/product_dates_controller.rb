class Admin::ProductDatesController < Admin::MasterController

  before_action :set_product, only: [:index, :create, :new]
  before_action :set_product_date, only: [:edit, :update, :destroy]

  def index
    @product_dates = @product.product_dates
  end

  def new
    @product_date = @product.product_dates.new
  end

  def create
    @product_date = @product.product_dates.new product_date_params
    @product_date.save
  end

  def edit
  end

  def update
    @product_date.update product_date_params
  end

  def destroy
    @product_date.destroy
  end

  private
  def product_date_params
    params.require(:product_date).permit :number, :content, :title
  end

  def set_product
    @product = Product.find_by id: params[:product_id]
  end

  def set_product_date
    @product_date = ProductDate.find_by id: params[:id]
  end
end
