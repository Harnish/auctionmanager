class Buyer < ActiveRecord::Base
  belongs_to :auction
  has_many :auction_items
end
