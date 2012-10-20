class AddAuctionToDonor < ActiveRecord::Migration
  def self.up
    add_column :donors, :auction_id, :integer
  end

  def self.down
    remove_column :donors, :auction_id
  end
end
