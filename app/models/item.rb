class Item < ActiveRecord::Base
  belongs_to :donor, :foreign_key => 'donor_id'
end
