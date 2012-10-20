class AuctionTable < ActiveRecord::Base
  belongs_to :auction, :foreign_key => 'auction_id'
  has_many :auction_items, :foreign_key => 'table_id'
  accepts_nested_attributes_for :auction_items
end
