class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :name, presence: true, uniqueness: {case_sensitive: true}
　  　　　# Uniqueness validator will no longer enforce case sensitive comparison in Rails 6.1."という警告への対処
  has_many :group_users
  has_many :groups, through: :group_users

end
