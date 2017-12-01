class User < ApplicationRecord
  has_many :bikes, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reservations_as_owner, through: :bikes, source: :reservations
  # has_many :bikes_as_client, class_name: 'Bike', through: :reservations
  validates :email, presence: true
  validates :email, uniqueness: true
  # validates :first_name, uniqueness: { scope: :last_name }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, PhotoUploader
end
