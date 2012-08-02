class User < ActiveRecord::Base
  include EmailValidator
  has_many :user_phone
  has_many :groups, :through => :user_groups
  has_many :bulletins

  validates :login, :email, :password, :password_confirmation, :presence => true
  validates :login, :email, :uniqueness => true
  validates :email, :email => true
  validates :password, :confirmation => true, :length => { :minimum => 6, :too_long => "Пароль должен иметь минимум 6 символов" }

  acts_as_authentic
end
