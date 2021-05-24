class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :phrases
  has_one_attached :image
  
  with_options presence: true do
    validates :username
    validates :nationality
    validates :birthday
  end
  
end
