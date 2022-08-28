class HomeController < ApplicationController
  def index
    @products = HTTParty.get('https://fakestoreapi.com/products')
  end
end
