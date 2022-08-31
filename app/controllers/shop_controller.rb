class ShopController < ApplicationController

  def all
    sort = params[:sort ? :sort : nil]
    if !sort
      response = HTTParty.get('https://fakestoreapi.com/products')
      @products = JSON.parse(response.body)
    else
      response = HTTParty.get("https://fakestoreapi.com/products", query: {
        sort: "#{sort}"
      })
      @products = JSON.parse(response.body)
    end
  end

  def filter
    sort = params[:sort ? :sort : nil]
    if !sort
      filter = params[:filterBy]
      response = HTTParty.get("https://fakestoreapi.com/products/category/#{filter}")
      @filtered = JSON.parse(response.body)
    else 
      filter = params[:filterBy]
      response = HTTParty.get("https://fakestoreapi.com/products/category/#{filter}", query: {
        sort: "#{sort}"
      })
      @filtered = JSON.parse(response.body)
    end
  end

end
