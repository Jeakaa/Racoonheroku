class CpusController < ApplicationController

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true).includes(:cpu)
  rescue
    redirect_to action: :index
  end

end
