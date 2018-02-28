class HomeController < ApplicationController
  def index
  	if params[:id] == ""
  		@nothing = "Hey, you forgot to enter a stock symbol."
  	elsif 

  		if params[:id]
        begin
  			 @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = "That Stock Symbol Doesn't Exist... please try agian."
        end
  		end
  	end
  end

  def about
  end
end
