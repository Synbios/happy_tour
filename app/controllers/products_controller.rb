class ProductsController < MasterController
  layout "star"

  def show
    @product = Product.find params[:id]
    @product_slides = @product.product_slides.order(order: :asc)
    @product_points = @product.product_points.order(order: :asc).to_a
  end

  # top deals
  def index
    @products = Product.where("deal_order > 0").order(deal_order: :asc)
  end
end
