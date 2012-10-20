class CreateAuctionTables < ActiveRecord::Migration
  def self.up
    create_table :auction_tables do |t|
      t.string :name
      t.time :closeTime
      t.integer :auction_id

      t.timestamps
    end
  end

  def self.down
    drop_table :auction_tables
  end
end
