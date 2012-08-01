class User < ActiveRecord::Base
  has_many :user_phone
  has_many :groups, :through => :user_groups

  acts_as_authentic
end
