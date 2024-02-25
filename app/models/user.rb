class User < ApplicationRecord
  has_many :user_packages
  has_many :packages, through: :user_packages
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :validatable,:jwt_authenticatable, jwt_revocation_strategy: self
end
