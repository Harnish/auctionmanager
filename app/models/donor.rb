class Donor < ActiveRecord::Base
  belongs_to :auction
  has_many :items, :foreign_key => 'donor_id'
end
