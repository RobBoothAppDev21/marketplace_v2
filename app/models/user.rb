class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :omniauthable
  devise  :database_authenticatable,
  :registerable,
  :recoverable,
  :rememberable,
  :validatable,
  :confirmable,
  :trackable
  
  has_one :profile, dependent: :destroy
end
