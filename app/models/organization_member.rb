class OrganizationMember < ActiveRecord::Base
  belongs_to :organization
  belongs_to :user
end
