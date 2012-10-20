class Auction < ActiveRecord::Base
  has_many :auction_items
  has_many :donors
  has_many :buyers
  has_many :auction_tables
  has_many :items, :through => :donors
  belongs_to :organization
end
