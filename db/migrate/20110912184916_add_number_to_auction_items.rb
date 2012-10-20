class AddNumberToAuctionItems < ActiveRecord::Migration
  def self.up
    add_column :auction_items, :itemnum, :string
  end

  def self.down
    remove_column :auction_items, :itemnum
  end
end
