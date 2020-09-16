class ProductsController < ApplicationController

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true).includes(:cpu, :gpu)

  rescue
    redirect_to action: :index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save!
      redirect_to  action: :index
    else
      render action: :new, notice: 'Продукт создан'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    Product.find(params[:id]).destroy

    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
  end

  def update_form
    @form_name = "products/#{params[:category_type]}"
    respond_to do |format|
      format.js
    end


  end

  private def product_params
    params.require(:product).permit(:name, :price, :company, :description, :quantity, :category_id, :avatar,
                                    cpu_attributes:[:id, :core_count, :performance, :generation_id, :cpusocket_id],
                                    gpu_attributes:[:id, :memory,:fan_quantity, :performance])
  end



end
