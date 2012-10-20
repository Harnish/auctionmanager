class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.integer :donor_id
      t.float :value
      t.string :description
      t.boolean :certificate
      t.boolean :delivered

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
