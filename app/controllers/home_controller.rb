class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: "pk_15feaedd30a54b698648109bf4e95fe4")

    if  params[:ticker] == ""
      @nothing = 'Please enter a ticker symbol'
    
    elsif params[:ticker]
        @stock = StockQuote::Stock.quote(params[:ticker])



  end
end

  def about

  end
end
