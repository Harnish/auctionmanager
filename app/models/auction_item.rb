class AuctionItem < ActiveRecord::Base
  belongs_to :buyer, :foreign_key => 'buyer_id'
  belongs_to :auction
  belongs_to :auction_table, :foreign_key => 'table_id'
end
