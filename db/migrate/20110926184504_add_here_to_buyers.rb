class AddHereToBuyers < ActiveRecord::Migration
  def self.up
    add_column :buyers, :here, :boolean
  end

  def self.down
    remove_column :buyers, :here
  end
end
