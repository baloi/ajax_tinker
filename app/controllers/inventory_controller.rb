class InventoryController < ApplicationController
  def index
    @products = Product.find(:all) 
  end

  def add_product
    # get name and price
    name = params[:product_name]
    price = params[:product_price]
    # add new product
    product = Product.create(:name => name, :price => price)
    @products = Product.find(:all) 
    render(:partial => 'list', :layout => false)
  end
end
