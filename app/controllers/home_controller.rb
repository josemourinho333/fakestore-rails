class HomeController < ApplicationController
  def index
    response = HTTParty.get('https://fakestoreapi.com/products')
    @products = JSON.parse(response.body)
  end
end
