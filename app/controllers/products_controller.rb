class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render new_product_path
    end
  end

  def product_params
    params.require(:product).permit(
      :name,
      :desc,
      :price,
      :category,
      :filepicker_url
    )
  end
end
