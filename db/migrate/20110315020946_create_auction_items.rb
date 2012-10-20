class CreateAuctionItems < ActiveRecord::Migration
  def self.up
    create_table :auction_items do |t|
      t.string :name
      t.string :description
      t.integer :buyer_id
      t.float :sellprice
      t.integer :item_id
      t.integer :table_id

      t.timestamps
    end
  end

  def self.down
    drop_table :auction_items
  end
end
