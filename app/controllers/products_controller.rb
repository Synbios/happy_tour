class ProductsController < MasterController
  layout "star"

  def show
    @product = Product.find params[:id]
    @product_slides = @product.product_slides
  end
end
