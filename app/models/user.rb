class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
 # has_many :user_histories
  # attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: self
         # :authentication_keys => [:login]



end
