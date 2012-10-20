class AddTaxableToAuctionItems < ActiveRecord::Migration
  def self.up
    add_column :auction_items, :taxable, :boolean
  end

  def self.down
    remove_column :auction_items, :taxable
  end
end
