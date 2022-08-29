class ShopController < ApplicationController

  def all
    response = HTTParty.get('https://fakestoreapi.com/products')
    pp response
    @products = JSON.parse(response.body)
  end

  def filter
    filter = params[:filterBy]
    response = HTTParty.get("https://fakestoreapi.com/products/category/#{filter}")
    @filtered = JSON.parse(response.body)
  end

end
