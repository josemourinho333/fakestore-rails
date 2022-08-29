class HomeController < ApplicationController

  def index
    response = HTTParty.get('https://fakestoreapi.com/products')
    @products = JSON.parse(response.body)
  end

  def show
    id = params[:product_id]
    response = HTTParty.get("https://fakestoreapi.com/products/#{id}")
    @product = JSON.parse(response.body)
  end

end