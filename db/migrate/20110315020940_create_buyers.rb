class CreateBuyers < ActiveRecord::Migration
  def self.up
    create_table :buyers do |t|
      t.string :name
      t.float :bidderNumber
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :buyers
  end
end
