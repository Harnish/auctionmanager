class CreateAuctions < ActiveRecord::Migration
  def self.up
    create_table :auctions do |t|
      t.string :name
      t.date :schedule
      t.integer :organization_id

      t.timestamps
    end
  end

  def self.down
    drop_table :auctions
  end
end
