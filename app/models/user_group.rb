class UserGroup < ActiveRecord::Base
  attr_accessible :group_id, :user_id
  has_one :user
  has_one :group
end
