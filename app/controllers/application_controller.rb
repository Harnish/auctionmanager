class ApplicationController < ActionController::Base
  protect_from_forgery
 
  before_filter :list_auctions
 
  protected
    def list_auctions
       @auctions_list = Auction.all 
       @auction_id = session[:auction_id]
    end
end
