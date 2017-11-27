class User < ApplicationRecord
  has_many :bikes
  has_many :reservations
  # has_many :bikes_as_client, class_name: 'Bike', through: :reservations
  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
