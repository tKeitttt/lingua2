class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :phrases
  has_one_attached :image
  has_many :room_users
  has_many :rooms, through: :room_users
  
  with_options presence: true do
    validates :username
    validates :nationality
    validates :birthday
  end
  
end
