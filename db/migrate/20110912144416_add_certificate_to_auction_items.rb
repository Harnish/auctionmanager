class AddCertificateToAuctionItems < ActiveRecord::Migration
  def self.up
    add_column :auction_items, :certificate, :boolean
  end

  def self.down
    remove_column :auction_items, :certificate
  end
end
